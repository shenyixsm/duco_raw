; Auto-generated. Do not edit!


(cl:in-package duco_msgs-msg)


;//! \htmlinclude DucoDigital.msg.html

(cl:defclass <DucoDigital> (roslisp-msg-protocol:ros-message)
  ((pin
    :reader pin
    :initarg :pin
    :type cl:fixnum
    :initform 0)
   (flag
    :reader flag
    :initarg :flag
    :type cl:boolean
    :initform cl:nil)
   (state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DucoDigital (<DucoDigital>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DucoDigital>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DucoDigital)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name duco_msgs-msg:<DucoDigital> is deprecated: use duco_msgs-msg:DucoDigital instead.")))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <DucoDigital>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duco_msgs-msg:pin-val is deprecated.  Use duco_msgs-msg:pin instead.")
  (pin m))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <DucoDigital>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duco_msgs-msg:flag-val is deprecated.  Use duco_msgs-msg:flag instead.")
  (flag m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <DucoDigital>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duco_msgs-msg:state-val is deprecated.  Use duco_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DucoDigital>) ostream)
  "Serializes a message object of type '<DucoDigital>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DucoDigital>) istream)
  "Deserializes a message object of type '<DucoDigital>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DucoDigital>)))
  "Returns string type for a message object of type '<DucoDigital>"
  "duco_msgs/DucoDigital")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DucoDigital)))
  "Returns string type for a message object of type 'DucoDigital"
  "duco_msgs/DucoDigital")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DucoDigital>)))
  "Returns md5sum for a message object of type '<DucoDigital>"
  "27fea16c33a8e446fcacfee31d199a86")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DucoDigital)))
  "Returns md5sum for a message object of type 'DucoDigital"
  "27fea16c33a8e446fcacfee31d199a86")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DucoDigital>)))
  "Returns full string definition for message of type '<DucoDigital>"
  (cl:format cl:nil "uint8 pin~%bool flag~%bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DucoDigital)))
  "Returns full string definition for message of type 'DucoDigital"
  (cl:format cl:nil "uint8 pin~%bool flag~%bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DucoDigital>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DucoDigital>))
  "Converts a ROS message object to a list"
  (cl:list 'DucoDigital
    (cl:cons ':pin (pin msg))
    (cl:cons ':flag (flag msg))
    (cl:cons ':state (state msg))
))
