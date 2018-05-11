#include <ros/ros.h>
#include <boost/asio.hpp>
#include <path/myLaser.h>

using namespace boost::asio;

int main(int argc, char** argv)
{
    int num_readings = 2600;
    unsigned char buf[2600];
    unsigned char get_data[42];

    char buf_b[] = "b";
    char buf_e[] = "e";
    unsigned int flag;

    ros::init(argc, argv, "laser_serial");
    ros::NodeHandle n;
    ros::Publisher laser_serial_pub = n.advertise<path::myLaser>("laser_serial", 100);
    
    io_service iosev;
    serial_port sp(iosev, "/dev/ttyUSB0");

    sp.set_option(serial_port::baud_rate(230400));
    sp.set_option(serial_port::flow_control());
    sp.set_option(serial_port::parity());
    sp.set_option(serial_port::stop_bits());
    sp.set_option(serial_port::character_size(8));

//    ros::Rate loop_rate(30);
    path::myLaser msg;
    write(sp, buffer(buf_b));
    while(ros::ok()){

        read(sp, buffer(buf));
        for(int i=0; i<num_readings; i++){
            printf("%x ", buf[i]);
        }
        printf("\n");
        flag = 0;
        for(int i=0; i<num_readings;i++){
            if(buf[i] == 0xfa){
               // printf("%x ", buf[i]);
               // printf("%x ", buf[i+1] == buf[i+1]+1);

               // printf("%x \n", buf[i+1]);
                for(int j=i; j<i+42;j++){
                    get_data[j-i] = buf[j];
                    printf("%x ", get_data[j-i]);
                }
                msg.serial.push_back(get_data[7]*256 + get_data[6]);
                msg.serial.push_back(get_data[13]*256 + get_data[12]);
                msg.serial.push_back(get_data[19]*256 + get_data[18]);
                msg.serial.push_back(get_data[25]*256 + get_data[24]);
                msg.serial.push_back(get_data[31]*256 + get_data[30]);
                msg.serial.push_back(get_data[37]*256 + get_data[36]);
                i += 40;
            }
            printf("\n");
           // printf("%d ", msg.serial[msg.serial.size()-1]);
            
        }
        printf("\n");
        for(int i=0; i<msg.serial.size(); i++){
            msg.serial[i] = msg.serial[i] / 1000;
            printf("%f,  ", msg.serial[i]);
        }
        printf("\n\n");
        printf("%d", msg.serial.size());
        printf("\n\n");

        laser_serial_pub.publish(msg);
        msg.serial.clear();


    }


    return 0;
}
