#include <ros/ros.h>
#include <geometry_msgs/PoseStamped.h>
#include <nav_msgs/Path.h>
#include <path/serial.h>
#include <tf/tf.h>



float x = 0.0;
float y = 0.0;
float th = 0.0;

nav_msgs::Path path_;

void serialCallback(const path::serial::ConstPtr &msg)
{

    double delta_x = msg->vk * cos(th) * 0.1 * 1000;
    double delta_y = msg->vk * sin(th) * 0.1 * 1000;
    double delta_th = msg->wk * 0.1 * 180 * 100;

    x += delta_x;
    y += delta_y;
    th += delta_th;
    
    geometry_msgs::PoseStamped pose_stamped;
    pose_stamped.pose.position.x = x;
    pose_stamped.pose.position.y = y;
    
    geometry_msgs::Quaternion goal_quat = tf::createQuaternionMsgFromYaw(th);
    pose_stamped.pose.orientation = goal_quat;
    pose_stamped.header.stamp = ros::Time::now();
    pose_stamped.header.frame_id = "path_";
    path_.poses.push_back(pose_stamped);
    
    path_.header.stamp = ros::Time::now();
    path_.header.frame_id = "path_";

    ROS_INFO("vk=%.3f,th=%.3f,x=%.3f,y=%.3f",msg->vk, th, pose_stamped.pose.position.x, pose_stamped.pose.position.y);
    
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "showpath_");
    ros::NodeHandle n;
    ros::Subscriber sub = n.subscribe<path::serial>("serial", 1, serialCallback);
    ros::Publisher pub = n.advertise<nav_msgs::Path>("showpath_", 1);

    ros::Rate r(1);
    while(ros::ok()){
        pub.publish(path_);
        ros::spinOnce();
        r.sleep();
    }
    return 0;
}
