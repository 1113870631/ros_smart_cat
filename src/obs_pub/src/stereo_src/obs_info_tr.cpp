#include "obs_info_tr.h"
#include <stdio.h>
#include <opencv2/opencv.hpp>

using namespace  cv;
using namespace  std;

extern vector<Vec3f>Obstacles_word_pos;

void  obs_info_send(ros::Publisher &info_pub){

    //根据距离排序，发送最近距离的障碍物
    vector<Vec3f>::iterator it;
    for(it=Obstacles_word_pos.begin();it!=Obstacles_word_pos.end();it++){
        if((*it)[2]<100){
            obs_pub::obs_msg msg;
            msg.dis=(*it)[2];
            msg.x1=(*it)[0];
            msg.x1=(*it)[1];
            info_pub.publish(msg);
        }
    }
    //清空Obstacles_word_pos
    Obstacles_word_pos.clear();
};