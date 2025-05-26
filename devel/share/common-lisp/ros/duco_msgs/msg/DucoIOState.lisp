; Auto-generated. Do not edit!


(cl:in-package duco_msgs-msg)


;//! \htmlinclude DucoIOState.msg.html

(cl:defclass <DucoIOState> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:string
    :initform "")
   (digital_in_states
    :reader digital_in_states
    :initarg :digital_in_states
    :type (cl:vector duco_msgs-msg:DucoDigital)
   :initform (cl:make-array 0 :element-type 'duco_msgs-msg:DucoDigital :initial-element (cl:make-instance 'duco_msgs-msg:DucoDigital)))
   (digital_out_states
    :reader digital_out_states
    :initarg :digital_out_states
    :type (cl:vector duco_msgs-msg:DucoDigital)
   :initform (cl:make-array 0 :element-type 'duco_msgs-msg:DucoDigital :initial-element (cl:make-instance 'duco_msgs-msg:DucoDigital)))
   (tool_in_states
    :reader tool_in_states
    :initarg :tool_in_states
    :type (cl:vector duco_msgs-msg:DucoDigital)
   :initform (cl:make-array 0 :element-type 'duco_msgs-msg:DucoDigital :initial-element (cl:make-instance 'duco_msgs-msg:DucoDigital)))
   (tool_out_states
    :reader tool_out_states
    :initarg :tool_out_states
    :type (cl:vector duco_msgs-msg:DucoDigital)
   :initform (cl:make-array 0 :element-type 'duco_msgs-msg:DucoDigital :initial-element (cl:make-instance 'duco_msgs-msg:DucoDigital)))
   (analog_in_states
    :reader analog_in_states
    :initarg :analog_in_states
    :type (cl:vector duco_msgs-msg:DucoAnalog)
   :initform (cl:make-array 0 :element-type 'duco_msgs-msg:DucoAnalog :initial-element (cl:make-instance 'duco_msgs-msg:DucoAnalog)))
   (analog_out_states
    :reader analog_out_states
    :initarg :analog_out_states
    :type (cl:vector duco_msgs-msg:DucoAnalog)
   :initform (cl:make-array 0 :element-type 'duco_msgs-msg:DucoAnalog :initial-element (cl:make-instance 'duco_msgs-msg:DucoAnalog))))
)

(cl:defclass DucoIOState (<DucoIOState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DucoIOState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DucoIOState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name duco_msgs-msg:<DucoIOState> is deprecated: use duco_msgs-msg:DucoIOState instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <DucoIOState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duco_msgs-msg:stamp-val is deprecated.  Use duco_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'digital_in_states-val :lambda-list '(m))
(cl:defmethod digital_in_states-val ((m <DucoIOState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duco_msgs-msg:digital_in_states-val is deprecated.  Use duco_msgs-msg:digital_in_states instead.")
  (digital_in_states m))

(cl:ensure-generic-function 'digital_out_states-val :lambda-list '(m))
(cl:defmethod digital_out_states-val ((m <DucoIOState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duco_msgs-msg:digital_out_states-val is deprecated.  Use duco_msgs-msg:digital_out_states instead.")
  (digital_out_states m))

(cl:ensure-generic-function 'tool_in_states-val :lambda-list '(m))
(cl:defmethod tool_in_states-val ((m <DucoIOState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duco_msgs-msg:tool_in_states-val is deprecated.  Use duco_msgs-msg:tool_in_states instead.")
  (tool_in_states m))

(cl:ensure-generic-function 'tool_out_states-val :lambda-list '(m))
(cl:defmethod tool_out_states-val ((m <DucoIOState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duco_msgs-msg:tool_out_states-val is deprecated.  Use duco_msgs-msg:tool_out_states instead.")
  (tool_out_states m))

(cl:ensure-generic-function 'analog_in_states-val :lambda-list '(m))
(cl:defmethod analog_in_states-val ((m <DucoIOState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duco_msgs-msg:analog_in_states-val is deprecated.  Use duco_msgs-msg:analog_in_states instead.")
  (analog_in_states m))

(cl:ensure-generic-function 'analog_out_states-val :lambda-list '(m))
(cl:defmethod analog_out_states-val ((m <DucoIOState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duco_msgs-msg:analog_out_states-val is deprecated.  Use duco_msgs-msg:analog_out_states instead.")
  (analog_out_states m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DucoIOState>) ostream)
  "Serializes a message object of type '<DucoIOState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'stamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'stamp))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'digital_in_states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'digital_in_states))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'digital_out_states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'digital_out_states))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tool_in_states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'tool_in_states))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tool_out_states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'tool_out_states))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'analog_in_states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'analog_in_states))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'analog_out_states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'analog_out_states))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DucoIOState>) istream)
  "Deserializes a message object of type '<DucoIOState>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'stamp) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'digital_in_states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'digital_in_states)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'duco_msgs-msg:DucoDigital))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'digital_out_states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'digital_out_states)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'duco_msgs-msg:DucoDigital))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tool_in_states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tool_in_states)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'duco_msgs-msg:DucoDigital))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tool_out_states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tool_out_states)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'duco_msgs-msg:DucoDigital))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'analog_in_states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'analog_in_states)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'duco_msgs-msg:DucoAnalog))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'analog_out_states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'analog_out_states)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'duco_msgs-msg:DucoAnalog))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DucoIOState>)))
  "Returns string type for a message object of type '<DucoIOState>"
  "duco_msgs/DucoIOState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DucoIOState)))
  "Returns string type for a message object of type 'DucoIOState"
  "duco_msgs/DucoIOState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DucoIOState>)))
  "Returns md5sum for a message object of type '<DucoIOState>"
  "2117ca0370ade6c80af07d396a3ecddd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DucoIOState)))
  "Returns md5sum for a message object of type 'DucoIOState"
  "2117ca0370ade6c80af07d396a3ecddd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DucoIOState>)))
  "Returns full string definition for message of type '<DucoIOState>"
  (cl:format cl:nil "string stamp ~%DucoDigital[] digital_in_states~%DucoDigital[] digital_out_states~%DucoDigital[] tool_in_states~%DucoDigital[] tool_out_states~%DucoAnalog[] analog_in_states~%DucoAnalog[] analog_out_states~%~%~%~%================================================================================~%MSG: duco_msgs/DucoDigital~%uint8 pin~%bool flag~%bool state~%~%================================================================================~%MSG: duco_msgs/DucoAnalog~%uint8 pin~%float64 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DucoIOState)))
  "Returns full string definition for message of type 'DucoIOState"
  (cl:format cl:nil "string stamp ~%DucoDigital[] digital_in_states~%DucoDigital[] digital_out_states~%DucoDigital[] tool_in_states~%DucoDigital[] tool_out_states~%DucoAnalog[] analog_in_states~%DucoAnalog[] analog_out_states~%~%~%~%================================================================================~%MSG: duco_msgs/DucoDigital~%uint8 pin~%bool flag~%bool state~%~%================================================================================~%MSG: duco_msgs/DucoAnalog~%uint8 pin~%float64 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DucoIOState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'stamp))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'digital_in_states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'digital_out_states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tool_in_states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tool_out_states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'analog_in_states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'analog_out_states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DucoIOState>))
  "Converts a ROS message object to a list"
  (cl:list 'DucoIOState
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':digital_in_states (digital_in_states msg))
    (cl:cons ':digital_out_states (digital_out_states msg))
    (cl:cons ':tool_in_states (tool_in_states msg))
    (cl:cons ':tool_out_states (tool_out_states msg))
    (cl:cons ':analog_in_states (analog_in_states msg))
    (cl:cons ':analog_out_states (analog_out_states msg))
))
