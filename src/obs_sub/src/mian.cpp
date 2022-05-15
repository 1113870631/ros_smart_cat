#include <iostream>
#include <ros/ros.h>
#include "/home/ww/smart/obs_tr_node/devel/include/obs_sub/obs_msg.h"
using namespace std;


void poseCallback(const obs_sub::obs_msg::ConstPtr& msg)
{
    // 将接收到的消息打印出来
    ROS_INFO(" info: x:%d, y:%d",msg->x1,msg->y1);
}


int main(int argc, char **argv){
    
             // ros初始化
      ros::init(argc, argv, "obs_info_subscribe");
         // 创建节点句柄
      ros::NodeHandle n;

    // 创建一个Publisher，发布名为/person_info的topic，消息类型为learning_topic::Person，队列长度10
     ros::Subscriber info_sub =  n.subscribe("/obs_info", 10, poseCallback);
         // 循环等待回调函数
    ros::spin();

    return 0;
 

}
