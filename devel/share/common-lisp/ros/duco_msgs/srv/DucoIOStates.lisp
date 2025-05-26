; Auto-generated. Do not edit!


(cl:in-package duco_msgs-srv)


;//! \htmlinclude DucoIOStates-request.msg.html

(cl:defclass <DucoIOStates-request> (roslisp-msg-protocol:ros-message)
  ((ioOper
    :reader ioOper
    :initarg :ioOper
    :type cl:fixnum
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (port
    :reader port
    :initarg :port
    :type cl:fixnum
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DucoIOStates-request (<DucoIOStates-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DucoIOStates-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DucoIOStates-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name duco_msgs-srv:<DucoIOStates-request> is deprecated: use duco_msgs-srv:DucoIOStates-request instead.")))

(cl:ensure-generic-function 'ioOper-val :lambda-list '(m))
(cl:defmethod ioOper-val ((m <DucoIOStates-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duco_msgs-srv:ioOper-val is deprecated.  Use duco_msgs-srv:ioOper instead.")
  (ioOper m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <DucoIOStates-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duco_msgs-srv:type-val is deprecated.  Use duco_msgs-srv:type instead.")
  (type m))

(cl:ensure-generic-function 'port-val :lambda-list '(m))
(cl:defmethod port-val ((m <DucoIOStates-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duco_msgs-srv:port-val is deprecated.  Use duco_msgs-srv:port instead.")
  (port m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DucoIOStates-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duco_msgs-srv:value-val is deprecated.  Use duco_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DucoIOStates-request>) ostream)
  "Serializes a message object of type '<DucoIOStates-request>"
  (cl:let* ((signed (cl:slot-value msg 'ioOper)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'port)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'value) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DucoIOStates-request>) istream)
  "Deserializes a message object of type '<DucoIOStates-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ioOper) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'port) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'value) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DucoIOStates-request>)))
  "Returns string type for a service object of type '<DucoIOStates-request>"
  "duco_msgs/DucoIOStatesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DucoIOStates-request)))
  "Returns string type for a service object of type 'DucoIOStates-request"
  "duco_msgs/DucoIOStatesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DucoIOStates-request>)))
  "Returns md5sum for a message object of type '<DucoIOStates-request>"
  "d73a38548e6ecc94c1d3393d8cbc66ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DucoIOStates-request)))
  "Returns md5sum for a message object of type 'DucoIOStates-request"
  "d73a38548e6ecc94c1d3393d8cbc66ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DucoIOStates-request>)))
  "Returns full string definition for message of type '<DucoIOStates-request>"
  (cl:format cl:nil "#IO 操作类型 Get Set~%int8 ioOper~%#IO 类型~%int8 type  # 0:gen io  1:tool io~%#IO 端口~%int8 port  #GEN IO 0--16  TOOL IO 0--1~%#SetIO 值~%bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DucoIOStates-request)))
  "Returns full string definition for message of type 'DucoIOStates-request"
  (cl:format cl:nil "#IO 操作类型 Get Set~%int8 ioOper~%#IO 类型~%int8 type  # 0:gen io  1:tool io~%#IO 端口~%int8 port  #GEN IO 0--16  TOOL IO 0--1~%#SetIO 值~%bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DucoIOStates-request>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DucoIOStates-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DucoIOStates-request
    (cl:cons ':ioOper (ioOper msg))
    (cl:cons ':type (type msg))
    (cl:cons ':port (port msg))
    (cl:cons ':value (value msg))
))
;//! \htmlinclude DucoIOStates-response.msg.html

(cl:defclass <DucoIOStates-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DucoIOStates-response (<DucoIOStates-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DucoIOStates-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DucoIOStates-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name duco_msgs-srv:<DucoIOStates-response> is deprecated: use duco_msgs-srv:DucoIOStates-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <DucoIOStates-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duco_msgs-srv:result-val is deprecated.  Use duco_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DucoIOStates-response>) ostream)
  "Serializes a message object of type '<DucoIOStates-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DucoIOStates-response>) istream)
  "Deserializes a message object of type '<DucoIOStates-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DucoIOStates-response>)))
  "Returns string type for a service object of type '<DucoIOStates-response>"
  "duco_msgs/DucoIOStatesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DucoIOStates-response)))
  "Returns string type for a service object of type 'DucoIOStates-response"
  "duco_msgs/DucoIOStatesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DucoIOStates-response>)))
  "Returns md5sum for a message object of type '<DucoIOStates-response>"
  "d73a38548e6ecc94c1d3393d8cbc66ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DucoIOStates-response)))
  "Returns md5sum for a message object of type 'DucoIOStates-response"
  "d73a38548e6ecc94c1d3393d8cbc66ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DucoIOStates-response>)))
  "Returns full string definition for message of type '<DucoIOStates-response>"
  (cl:format cl:nil "#获取操作结果~%bool result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DucoIOStates-response)))
  "Returns full string definition for message of type 'DucoIOStates-response"
  (cl:format cl:nil "#获取操作结果~%bool result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DucoIOStates-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DucoIOStates-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DucoIOStates-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DucoIOStates)))
  'DucoIOStates-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DucoIOStates)))
  'DucoIOStates-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DucoIOStates)))
  "Returns string type for a service object of type '<DucoIOStates>"
  "duco_msgs/DucoIOStates")