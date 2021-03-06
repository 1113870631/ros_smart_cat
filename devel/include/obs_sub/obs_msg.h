// Generated by gencpp from file obs_sub/obs_msg.msg
// DO NOT EDIT!


#ifndef OBS_SUB_MESSAGE_OBS_MSG_H
#define OBS_SUB_MESSAGE_OBS_MSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace obs_sub
{
template <class ContainerAllocator>
struct obs_msg_
{
  typedef obs_msg_<ContainerAllocator> Type;

  obs_msg_()
    : x1(0)
    , y1(0)
    , x2(0)
    , y2(0)
    , dis(0)
    , pos(0)  {
    }
  obs_msg_(const ContainerAllocator& _alloc)
    : x1(0)
    , y1(0)
    , x2(0)
    , y2(0)
    , dis(0)
    , pos(0)  {
  (void)_alloc;
    }



   typedef int32_t _x1_type;
  _x1_type x1;

   typedef int32_t _y1_type;
  _y1_type y1;

   typedef int32_t _x2_type;
  _x2_type x2;

   typedef int32_t _y2_type;
  _y2_type y2;

   typedef int32_t _dis_type;
  _dis_type dis;

   typedef int32_t _pos_type;
  _pos_type pos;





  typedef boost::shared_ptr< ::obs_sub::obs_msg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::obs_sub::obs_msg_<ContainerAllocator> const> ConstPtr;

}; // struct obs_msg_

typedef ::obs_sub::obs_msg_<std::allocator<void> > obs_msg;

typedef boost::shared_ptr< ::obs_sub::obs_msg > obs_msgPtr;
typedef boost::shared_ptr< ::obs_sub::obs_msg const> obs_msgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::obs_sub::obs_msg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::obs_sub::obs_msg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::obs_sub::obs_msg_<ContainerAllocator1> & lhs, const ::obs_sub::obs_msg_<ContainerAllocator2> & rhs)
{
  return lhs.x1 == rhs.x1 &&
    lhs.y1 == rhs.y1 &&
    lhs.x2 == rhs.x2 &&
    lhs.y2 == rhs.y2 &&
    lhs.dis == rhs.dis &&
    lhs.pos == rhs.pos;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::obs_sub::obs_msg_<ContainerAllocator1> & lhs, const ::obs_sub::obs_msg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace obs_sub

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::obs_sub::obs_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::obs_sub::obs_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::obs_sub::obs_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::obs_sub::obs_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::obs_sub::obs_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::obs_sub::obs_msg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::obs_sub::obs_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3d164f9c8582b11fd9a4b6bc2d296d1b";
  }

  static const char* value(const ::obs_sub::obs_msg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3d164f9c8582b11fULL;
  static const uint64_t static_value2 = 0xd9a4b6bc2d296d1bULL;
};

template<class ContainerAllocator>
struct DataType< ::obs_sub::obs_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "obs_sub/obs_msg";
  }

  static const char* value(const ::obs_sub::obs_msg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::obs_sub::obs_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 x1\n"
"int32 y1\n"
"int32 x2\n"
"int32 y2\n"
"int32 dis\n"
"int32 pos\n"
;
  }

  static const char* value(const ::obs_sub::obs_msg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::obs_sub::obs_msg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x1);
      stream.next(m.y1);
      stream.next(m.x2);
      stream.next(m.y2);
      stream.next(m.dis);
      stream.next(m.pos);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct obs_msg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::obs_sub::obs_msg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::obs_sub::obs_msg_<ContainerAllocator>& v)
  {
    s << indent << "x1: ";
    Printer<int32_t>::stream(s, indent + "  ", v.x1);
    s << indent << "y1: ";
    Printer<int32_t>::stream(s, indent + "  ", v.y1);
    s << indent << "x2: ";
    Printer<int32_t>::stream(s, indent + "  ", v.x2);
    s << indent << "y2: ";
    Printer<int32_t>::stream(s, indent + "  ", v.y2);
    s << indent << "dis: ";
    Printer<int32_t>::stream(s, indent + "  ", v.dis);
    s << indent << "pos: ";
    Printer<int32_t>::stream(s, indent + "  ", v.pos);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OBS_SUB_MESSAGE_OBS_MSG_H
