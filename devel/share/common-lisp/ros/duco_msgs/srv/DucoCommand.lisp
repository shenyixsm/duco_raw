; Auto-generated. Do not edit!


(cl:in-package duco_msgs-srv)


;//! \htmlinclude DucoCommand-request.msg.html

(cl:defclass <DucoCommand-request> (roslisp-msg-protocol:ros-message)
  ((commandType
    :reader commandType
    :initarg :commandType
    :type cl:fixnum
    :initform 0)
   (operateType
    :reader operateType
    :initarg :operateType
    :type cl:fixnum
    :initform 0)
   (script
    :reader script
    :initarg :script
    :type cl:string
    :initform "")
   (program
    :reader program
    :initarg :program
    :type cl:string
    :initform "")
   (col_on
    :reader col_on
    :initarg :col_on
    :type cl:boolean
    :initform cl:nil)
   (sensitivity
    :reader sensitivity
    :initarg :sensitivity
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DucoCommand-request (<DucoCommand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DucoCommand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DucoCommand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name duco_msgs-srv:<DucoCommand-request> is deprecated: use duco_msgs-srv:DucoCommand-request instead.")))

(cl:ensure-generic-function 'commandType-val :lambda-list '(m))
(cl:defmethod commandType-val ((m <DucoCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duco_msgs-srv:commandType-val is deprecated.  Use duco_msgs-srv:commandType instead.")
  (commandType m))

(cl:ensure-generic-function 'operateType-val :lambda-list '(m))
(cl:defmethod operateType-val ((m <DucoCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duco_msgs-srv:operateType-val is deprecated.  Use duco_msgs-srv:operateType instead.")
  (operateType m))

(cl:ensure-generic-function 'script-val :lambda-list '(m))
(cl:defmethod script-val ((m <DucoCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duco_msgs-srv:script-val is deprecated.  Use duco_msgs-srv:script instead.")
  (script m))

(cl:ensure-generic-function 'program-val :lambda-list '(m))
(cl:defmethod program-val ((m <DucoCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duco_msgs-srv:program-val is deprecated.  Use duco_msgs-srv:program instead.")
  (program m))

(cl:ensure-generic-function 'col_on-val :lambda-list '(m))
(cl:defmethod col_on-val ((m <DucoCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duco_msgs-srv:col_on-val is deprecated.  Use duco_msgs-srv:col_on instead.")
  (col_on m))

(cl:ensure-generic-function 'sensitivity-val :lambda-list '(m))
(cl:defmethod sensitivity-val ((m <DucoCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duco_msgs-srv:sensitivity-val is deprecated.  Use duco_msgs-srv:sensitivity instead.")
  (sensitivity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DucoCommand-request>) ostream)
  "Serializes a message object of type '<DucoCommand-request>"
  (cl:let* ((signed (cl:slot-value msg 'commandType)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'operateType)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'script))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'script))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'program))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'program))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'col_on) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'sensitivity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DucoCommand-request>) istream)
  "Deserializes a message object of type '<DucoCommand-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'commandType) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'operateType) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'script) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'script) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'program) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'program) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'col_on) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensitivity) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DucoCommand-request>)))
  "Returns string type for a service object of type '<DucoCommand-request>"
  "duco_msgs/DucoCommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DucoCommand-request)))
  "Returns string type for a service object of type 'DucoCommand-request"
  "duco_msgs/DucoCommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DucoCommand-request>)))
  "Returns md5sum for a message object of type '<DucoCommand-request>"
  "8413a3d40877c7c622b23a57cfe681a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DucoCommand-request)))
  "Returns md5sum for a message object of type 'DucoCommand-request"
  "8413a3d40877c7c622b23a57cfe681a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DucoCommand-request>)))
  "Returns full string definition for message of type '<DucoCommand-request>"
  (cl:format cl:nil "#command type~%int8 commandType~%int8 operateType~%~%#script~%string script~%~%#program name~%string program~%~%#col_control~%bool col_on~%int8 sensitivity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DucoCommand-request)))
  "Returns full string definition for message of type 'DucoCommand-request"
  (cl:format cl:nil "#command type~%int8 commandType~%int8 operateType~%~%#script~%string script~%~%#program name~%string program~%~%#col_control~%bool col_on~%int8 sensitivity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DucoCommand-request>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'script))
     4 (cl:length (cl:slot-value msg 'program))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DucoCommand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DucoCommand-request
    (cl:cons ':commandType (commandType msg))
    (cl:cons ':operateType (operateType msg))
    (cl:cons ':script (script msg))
    (cl:cons ':program (program msg))
    (cl:cons ':col_on (col_on msg))
    (cl:cons ':sensitivity (sensitivity msg))
))
;//! \htmlinclude DucoCommand-response.msg.html

(cl:defclass <DucoCommand-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0))
)

(cl:defclass DucoCommand-response (<DucoCommand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DucoCommand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DucoCommand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name duco_msgs-srv:<DucoCommand-response> is deprecated: use duco_msgs-srv:DucoCommand-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <DucoCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duco_msgs-srv:state-val is deprecated.  Use duco_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DucoCommand-response>) ostream)
  "Serializes a message object of type '<DucoCommand-response>"
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DucoCommand-response>) istream)
  "Deserializes a message object of type '<DucoCommand-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DucoCommand-response>)))
  "Returns string type for a service object of type '<DucoCommand-response>"
  "duco_msgs/DucoCommandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DucoCommand-response)))
  "Returns string type for a service object of type 'DucoCommand-response"
  "duco_msgs/DucoCommandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DucoCommand-response>)))
  "Returns md5sum for a message object of type '<DucoCommand-response>"
  "8413a3d40877c7c622b23a57cfe681a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DucoCommand-response)))
  "Returns md5sum for a message object of type 'DucoCommand-response"
  "8413a3d40877c7c622b23a57cfe681a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DucoCommand-response>)))
  "Returns full string definition for message of type '<DucoCommand-response>"
  (cl:format cl:nil "#true:finish false:error~%int32 state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DucoCommand-response)))
  "Returns full string definition for message of type 'DucoCommand-response"
  (cl:format cl:nil "#true:finish false:error~%int32 state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DucoCommand-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DucoCommand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DucoCommand-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DucoCommand)))
  'DucoCommand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DucoCommand)))
  'DucoCommand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DucoCommand)))
  "Returns string type for a service object of type '<DucoCommand>"
  "duco_msgs/DucoCommand")