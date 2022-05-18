#include <iostream>
#include <ros/ros.h>
#include "/home/ww/smart/obs_tr_node/devel/include/obs_sub/obs_msg.h"
#include <stdio.h>
#include <errno.h>
#include <string.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <unistd.h>
#include <stdlib.h>
#include <fcntl.h>
#include <time.h>
#if (defined __QNX__) | (defined __QNXNTO__)
/* QNX specific headers */
#include <unix.h>
#else
/* Linux / MacOS POSIX timer headers */
#include <sys/time.h>
#include <time.h>
#include <arpa/inet.h>
#include <stdbool.h> /* required for the definition of bool in C99 */
#endif

/* This assumes you have the mavlink headers on your include path
 or in the same folder as this source file */

#include <mavlink.h>

using namespace std;



obs_sub::obs_msg msg_ros_re;
int sem=0;
void poseCallback(const obs_sub::obs_msg::ConstPtr& msg_ros)
{
    // 将接收到的消息打印出来
    ROS_INFO("dis:%d\n",msg_ros->dis);
	msg_ros_re=*msg_ros;
	sem=1;
}

#define BUFFER_LENGTH 2041 // minimum buffer size that can be used with qnx (I don't know why)

uint64_t microsSinceEpoch();

int main(int argc, char **argv){

  uint32_t time_boot_ms = 0; /*< Time since system boot*/
  uint16_t min_distance = 30; /*< Minimum distance the sensor can measure in centimeters*/
  uint16_t max_distance = 900; /*< Maximum distance the sensor can measure in centimeters*/
  uint8_t type = 0; /*< Type from MAV_DISTANCE_SENSOR enum.*/
  uint8_t id = 1; /*< Onboard ID of the sensor*/
  uint8_t orientation=0 ; /*(0=forward, each increment is 45degrees more in clockwise direction), 24 (upwards) or 25 (downwards)*/
// Consumed within ArduPilot by the proximity class
  uint8_t covariance = 0; /*< Measurement covariance in centimeters, 0 for unknown / invalid readings*/

	char help[] = "--help";
	
	
	char target_ip[100];
	
	float position[6] = {1};
	int sock = socket(PF_INET, SOCK_DGRAM, IPPROTO_UDP);
	struct sockaddr_in gcAddr; 
	struct sockaddr_in locAddr;
	//struct sockaddr_in fromAddr;
	uint8_t buf[BUFFER_LENGTH];
	ssize_t recsize;
	socklen_t fromlen = sizeof(gcAddr);
	int bytes_sent;
	mavlink_message_t msg;
	uint16_t len;
	int i = 0;
	//int success = 0;
	unsigned int temp = 0;
	
	// Check if --help flag was used
	if ((argc == 2) && (strcmp(argv[1], help) == 0))
    {
		printf("\n");
		printf("\tUsage:\n\n");
		printf("\t");
		printf("%s", argv[0]);
		printf(" <ip address of QGroundControl>\n");
		printf("\tDefault for localhost: udp-server 127.0.0.1\n\n");
		exit(EXIT_FAILURE);
    }
	
	
	// Change the target ip if parameter was given
	strcpy(target_ip, "127.0.0.1");
	if (argc == 2)
    {
		strcpy(target_ip, argv[1]);
    }
	
	
	memset(&locAddr, 0, sizeof(locAddr));
	locAddr.sin_family = AF_INET;
	locAddr.sin_addr.s_addr = INADDR_ANY;
	locAddr.sin_port = htons(14550);
	
	/* Bind the socket to port 14551 - necessary to receive packets from qgroundcontrol */ 
	if (-1 == bind(sock,(struct sockaddr *)&locAddr, sizeof(struct sockaddr)))
    {
		perror("error bind failed");
		close(sock);
		exit(EXIT_FAILURE);
    } 
	
	/* Attempt to make it non blocking */
#if (defined __QNX__) | (defined __QNXNTO__)
	if (fcntl(sock, F_SETFL, O_NONBLOCK | FASYNC) < 0)
#else
	if (fcntl(sock, F_SETFL, O_NONBLOCK | O_ASYNC) < 0)
#endif

    {
		fprintf(stderr, "error setting nonblocking: %s\n", strerror(errno));
		close(sock);
		exit(EXIT_FAILURE);
    }
	
	
	memset(&gcAddr, 0, sizeof(gcAddr));
	gcAddr.sin_family = AF_INET;
	gcAddr.sin_addr.s_addr = inet_addr(target_ip);
	gcAddr.sin_port = htons(14551);
	

    
             // ros初始化
      ros::init(argc, argv, "obs_info_subscribe");
         // 创建节点句柄
      ros::NodeHandle n;

    // 创建一个Publisher，发布名为/person_info的topic，消息类型为learning_topic::Person，队列长度10
     ros::Subscriber info_sub =  n.subscribe("/obs_info", 10, poseCallback);

        while(ros::ok) 
    {
		int sysid=15;

		//ROS_INFO("MAV_heat_beat\n");
		if(sem==1){
			mavlink_msg_my_info_pack(sysid, 666, &msg,msg_ros_re.x1,msg_ros_re.y1,msg_ros_re.x2,msg_ros_re.y2,msg_ros_re.pos,msg_ros_re.dis);
			len = mavlink_msg_to_send_buffer(buf, &msg);
			bytes_sent = sendto(sock, buf, len, 0, (struct sockaddr*)&gcAddr, sizeof(struct sockaddr_in));
			sem=0;
			ROS_INFO("MAV_obs_info\n");
		} 
         // 等待回调函数
        ros::spinOnce();
		memset(buf, 0, BUFFER_LENGTH);
		usleep(140000) ;// Sleep one second
	
	 }

     printf("ros not ok!\n");
     return 0;
}


         

