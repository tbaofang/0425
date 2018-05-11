#include <ros/ros.h>
#include <path/myLaser.h>
#include <sensor_msgs/LaserScan.h>
#include <iostream>

using namespace std;

class SubAndPub
{
    private:
        ros::NodeHandle n_;
        ros::Publisher pub_;
        ros::Subscriber sub_;

    public:
        SubAndPub(){
            sub_ = n_.subscribe("laser_serial", 100, &SubAndPub::callback, this)
; 
            pub_ = n_.advertise<sensor_msgs::LaserScan>("laser_show", 100);
        }

        void callback(const path::myLaser::ConstPtr& msg){
           // cout << msg->serial[0] << endl;
            
            unsigned int num_readings = 100;
            double laser_frequency = 40;
            double ranges[num_readings];
            double intensities[num_readings];

            ros::Time scan_time = ros::Time::now();
            sensor_msgs::LaserScan scan;

            scan.header.stamp = scan_time;
            scan.header.frame_id = "base_link";
            scan.angle_min = 0;
            scan.angle_max = 6.28;
            scan.angle_increment = 6.28 / num_readings;
            scan.time_increment = (1 / laser_frequency) / num_readings;
            scan.range_min = 0.0;
            scan.range_max = 50;
            scan.ranges.resize(num_readings);
            scan.intensities.resize(num_readings);
            for(unsigned int i=0; i<num_readings; i++){
                scan.ranges[i] = msg->serial[i];
                scan.intensities[i] = 100;
            }
            pub_.publish(scan);
            
        }
};

int main(int argc, char** argv)
{
    ros::init(argc, argv, "laser_show");
    
    SubAndPub subandpub;

    ros::spin();
    return 0;
}
