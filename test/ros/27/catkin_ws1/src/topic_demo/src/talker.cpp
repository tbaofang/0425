#include <ros/ros.h>
#inlcude <topic_demo/gps.h>

int main(int argc, char** argv)
{
    ros::init(argc, argv, "talker");
    ros::NodeHandle nh;
    ros::Publisher pub = nh.advertise<topic_demo::gps>("gps_info", 10);
    ros::Rate loop_rate(1.0);
    
    topic_demo::gps msg;
    msg.x = 1.0;
    msg.y = 1.0;
    msg.state = "working";

    while(ros::ok()){
        msg.x = 1.03 * msg.x;
        msg.y = 1.01 * msg.y;
        ROS_INFO("Talder: GPSP:x = %f, y = %f", msg.x, msg.y);
        pub.publish(msg);
        loop_rate.sleep();
    }
}
