// Generated by gencpp from file duco_msgs/DucoGetFKRequest.msg
// DO NOT EDIT!


#ifndef DUCO_MSGS_MESSAGE_DUCOGETFKREQUEST_H
#define DUCO_MSGS_MESSAGE_DUCOGETFKREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace duco_msgs
{
template <class ContainerAllocator>
struct DucoGetFKRequest_
{
  typedef DucoGetFKRequest_<ContainerAllocator> Type;

  DucoGetFKRequest_()
    : joint()  {
    }
  DucoGetFKRequest_(const ContainerAllocator& _alloc)
    : joint(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _joint_type;
  _joint_type joint;





  typedef boost::shared_ptr< ::duco_msgs::DucoGetFKRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::duco_msgs::DucoGetFKRequest_<ContainerAllocator> const> ConstPtr;

}; // struct DucoGetFKRequest_

typedef ::duco_msgs::DucoGetFKRequest_<std::allocator<void> > DucoGetFKRequest;

typedef boost::shared_ptr< ::duco_msgs::DucoGetFKRequest > DucoGetFKRequestPtr;
typedef boost::shared_ptr< ::duco_msgs::DucoGetFKRequest const> DucoGetFKRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::duco_msgs::DucoGetFKRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::duco_msgs::DucoGetFKRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::duco_msgs::DucoGetFKRequest_<ContainerAllocator1> & lhs, const ::duco_msgs::DucoGetFKRequest_<ContainerAllocator2> & rhs)
{
  return lhs.joint == rhs.joint;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::duco_msgs::DucoGetFKRequest_<ContainerAllocator1> & lhs, const ::duco_msgs::DucoGetFKRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace duco_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::duco_msgs::DucoGetFKRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::duco_msgs::DucoGetFKRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::duco_msgs::DucoGetFKRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::duco_msgs::DucoGetFKRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::duco_msgs::DucoGetFKRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::duco_msgs::DucoGetFKRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::duco_msgs::DucoGetFKRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "edecb4b6fff50f927a908742515e167a";
  }

  static const char* value(const ::duco_msgs::DucoGetFKRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xedecb4b6fff50f92ULL;
  static const uint64_t static_value2 = 0x7a908742515e167aULL;
};

template<class ContainerAllocator>
struct DataType< ::duco_msgs::DucoGetFKRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "duco_msgs/DucoGetFKRequest";
  }

  static const char* value(const ::duco_msgs::DucoGetFKRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::duco_msgs::DucoGetFKRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[] joint\n"
;
  }

  static const char* value(const ::duco_msgs::DucoGetFKRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::duco_msgs::DucoGetFKRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.joint);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DucoGetFKRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::duco_msgs::DucoGetFKRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::duco_msgs::DucoGetFKRequest_<ContainerAllocator>& v)
  {
    s << indent << "joint[]" << std::endl;
    for (size_t i = 0; i < v.joint.size(); ++i)
    {
      s << indent << "  joint[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.joint[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // DUCO_MSGS_MESSAGE_DUCOGETFKREQUEST_H
