; Auto-generated. Do not edit!


(cl:in-package duco_msgs-msg)


;//! \htmlinclude DucoAnalog.msg.html

(cl:defclass <DucoAnalog> (roslisp-msg-protocol:ros-message)
  ((pin
    :reader pin
    :initarg :pin
    :type cl:fixnum
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:float
    :initform 0.0))
)

(cl:defclass DucoAnalog (<DucoAnalog>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DucoAnalog>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DucoAnalog)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name duco_msgs-msg:<DucoAnalog> is deprecated: use duco_msgs-msg:DucoAnalog instead.")))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <DucoAnalog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duco_msgs-msg:pin-val is deprecated.  Use duco_msgs-msg:pin instead.")
  (pin m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <DucoAnalog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duco_msgs-msg:state-val is deprecated.  Use duco_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DucoAnalog>) ostream)
  "Serializes a message object of type '<DucoAnalog>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DucoAnalog>) istream)
  "Deserializes a message object of type '<DucoAnalog>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'state) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DucoAnalog>)))
  "Returns string type for a message object of type '<DucoAnalog>"
  "duco_msgs/DucoAnalog")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DucoAnalog)))
  "Returns string type for a message object of type 'DucoAnalog"
  "duco_msgs/DucoAnalog")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DucoAnalog>)))
  "Returns md5sum for a message object of type '<DucoAnalog>"
  "c4fdd0f2fe59ae5f40617c11fc52844a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DucoAnalog)))
  "Returns md5sum for a message object of type 'DucoAnalog"
  "c4fdd0f2fe59ae5f40617c11fc52844a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DucoAnalog>)))
  "Returns full string definition for message of type '<DucoAnalog>"
  (cl:format cl:nil "uint8 pin~%float64 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DucoAnalog)))
  "Returns full string definition for message of type 'DucoAnalog"
  (cl:format cl:nil "uint8 pin~%float64 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DucoAnalog>))
  (cl:+ 0
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DucoAnalog>))
  "Converts a ROS message object to a list"
  (cl:list 'DucoAnalog
    (cl:cons ':pin (pin msg))
    (cl:cons ':state (state msg))
))
