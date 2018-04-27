#include <ros/ros.h>
#include <serviec_demo/Greeting.h>

bool handle_function(serviec::demo::Greeting::Request &req, serviec::demo::Greeting::Response &res)
{
    ROS_INFO("Request from %s with age %d", req.name.c_str(), req.age);
    res.feedback = "Hi" + req.name + ".I'm server!";
    return true;
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "greetings_server");
    ros::NodeHandle n;
    ros::ServiceServer service = nh.advertiseService("greetings", handle_function);
    ros::spin();
    return 0;
}
