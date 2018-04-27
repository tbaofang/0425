// Generated by gencpp from file msgs_demo/TwistWithCovariance.msg
// DO NOT EDIT!


#ifndef MSGS_DEMO_MESSAGE_TWISTWITHCOVARIANCE_H
#define MSGS_DEMO_MESSAGE_TWISTWITHCOVARIANCE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <msgs_demo/Twist.h>

namespace msgs_demo
{
template <class ContainerAllocator>
struct TwistWithCovariance_
{
  typedef TwistWithCovariance_<ContainerAllocator> Type;

  TwistWithCovariance_()
    : twist()
    , covariance()  {
      covariance.assign(0.0);
  }
  TwistWithCovariance_(const ContainerAllocator& _alloc)
    : twist(_alloc)
    , covariance()  {
  (void)_alloc;
      covariance.assign(0.0);
  }



   typedef  ::msgs_demo::Twist_<ContainerAllocator>  _twist_type;
  _twist_type twist;

   typedef boost::array<double, 36>  _covariance_type;
  _covariance_type covariance;





  typedef boost::shared_ptr< ::msgs_demo::TwistWithCovariance_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::msgs_demo::TwistWithCovariance_<ContainerAllocator> const> ConstPtr;

}; // struct TwistWithCovariance_

typedef ::msgs_demo::TwistWithCovariance_<std::allocator<void> > TwistWithCovariance;

typedef boost::shared_ptr< ::msgs_demo::TwistWithCovariance > TwistWithCovariancePtr;
typedef boost::shared_ptr< ::msgs_demo::TwistWithCovariance const> TwistWithCovarianceConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::msgs_demo::TwistWithCovariance_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::msgs_demo::TwistWithCovariance_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace msgs_demo

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'msgs_demo': ['/home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/msgs_demo/msg', '/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/share/msgs_demo/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::msgs_demo::TwistWithCovariance_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::msgs_demo::TwistWithCovariance_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msgs_demo::TwistWithCovariance_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msgs_demo::TwistWithCovariance_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msgs_demo::TwistWithCovariance_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msgs_demo::TwistWithCovariance_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::msgs_demo::TwistWithCovariance_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1fe8a28e6890a4cc3ae4c3ca5c7d82e6";
  }

  static const char* value(const ::msgs_demo::TwistWithCovariance_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1fe8a28e6890a4ccULL;
  static const uint64_t static_value2 = 0x3ae4c3ca5c7d82e6ULL;
};

template<class ContainerAllocator>
struct DataType< ::msgs_demo::TwistWithCovariance_<ContainerAllocator> >
{
  static const char* value()
  {
    return "msgs_demo/TwistWithCovariance";
  }

  static const char* value(const ::msgs_demo::TwistWithCovariance_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::msgs_demo::TwistWithCovariance_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#消息定义了包含不确定性的速度量，协方差矩阵按行分别表示：\n\
#沿x方向速度的不确定性，沿y方向速度的不确定性，沿z方向速度的不确定性\n\
#绕x转动角速度的不确定性，绕y轴转动的角速度的不确定性，绕z轴转动的角速度的不确定性\n\
\n\
#位置：geometry_msgs/TwistWithCovariance.msg\n\
\n\
Twist twist\n\
float64[36] covariance  #分别表示[x; y; z; Rx; Ry; Rz]\n\
\n\
================================================================================\n\
MSG: msgs_demo/Twist\n\
#定义空间中物体运动的线速度和角速度\n\
#位置：geometry_msgs/Twist.msg\n\
\n\
Vector3 linear\n\
Vector3 angular\n\
\n\
================================================================================\n\
MSG: msgs_demo/Vector3\n\
#位置:geometry_msgs/Vector3.msg\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::msgs_demo::TwistWithCovariance_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::msgs_demo::TwistWithCovariance_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.twist);
      stream.next(m.covariance);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TwistWithCovariance_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::msgs_demo::TwistWithCovariance_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::msgs_demo::TwistWithCovariance_<ContainerAllocator>& v)
  {
    s << indent << "twist: ";
    s << std::endl;
    Printer< ::msgs_demo::Twist_<ContainerAllocator> >::stream(s, indent + "  ", v.twist);
    s << indent << "covariance[]" << std::endl;
    for (size_t i = 0; i < v.covariance.size(); ++i)
    {
      s << indent << "  covariance[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.covariance[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MSGS_DEMO_MESSAGE_TWISTWITHCOVARIANCE_H
