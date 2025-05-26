; Auto-generated. Do not edit!


(cl:in-package duco_msgs-srv)


;//! \htmlinclude DucoGetFK-request.msg.html

(cl:defclass <DucoGetFK-request> (roslisp-msg-protocol:ros-message)
  ((joint
    :reader joint
    :initarg :joint
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass DucoGetFK-request (<DucoGetFK-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DucoGetFK-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DucoGetFK-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name duco_msgs-srv:<DucoGetFK-request> is deprecated: use duco_msgs-srv:DucoGetFK-request instead.")))

(cl:ensure-generic-function 'joint-val :lambda-list '(m))
(cl:defmethod joint-val ((m <DucoGetFK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duco_msgs-srv:joint-val is deprecated.  Use duco_msgs-srv:joint instead.")
  (joint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DucoGetFK-request>) ostream)
  "Serializes a message object of type '<DucoGetFK-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'joint))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DucoGetFK-request>) istream)
  "Deserializes a message object of type '<DucoGetFK-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DucoGetFK-request>)))
  "Returns string type for a service object of type '<DucoGetFK-request>"
  "duco_msgs/DucoGetFKRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DucoGetFK-request)))
  "Returns string type for a service object of type 'DucoGetFK-request"
  "duco_msgs/DucoGetFKRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DucoGetFK-request>)))
  "Returns md5sum for a message object of type '<DucoGetFK-request>"
  "2c07157d0fbbe168e2662645c6ac7844")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DucoGetFK-request)))
  "Returns md5sum for a message object of type 'DucoGetFK-request"
  "2c07157d0fbbe168e2662645c6ac7844")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DucoGetFK-request>)))
  "Returns full string definition for message of type '<DucoGetFK-request>"
  (cl:format cl:nil "float32[] joint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DucoGetFK-request)))
  "Returns full string definition for message of type 'DucoGetFK-request"
  (cl:format cl:nil "float32[] joint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DucoGetFK-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DucoGetFK-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DucoGetFK-request
    (cl:cons ':joint (joint msg))
))
;//! \htmlinclude DucoGetFK-response.msg.html

(cl:defclass <DucoGetFK-response> (roslisp-msg-protocol:ros-message)
  ((pos
    :reader pos
    :initarg :pos
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (rpy
    :reader rpy
    :initarg :rpy
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DucoGetFK-response (<DucoGetFK-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DucoGetFK-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DucoGetFK-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name duco_msgs-srv:<DucoGetFK-response> is deprecated: use duco_msgs-srv:DucoGetFK-response instead.")))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <DucoGetFK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duco_msgs-srv:pos-val is deprecated.  Use duco_msgs-srv:pos instead.")
  (pos m))

(cl:ensure-generic-function 'rpy-val :lambda-list '(m))
(cl:defmethod rpy-val ((m <DucoGetFK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duco_msgs-srv:rpy-val is deprecated.  Use duco_msgs-srv:rpy instead.")
  (rpy m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DucoGetFK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duco_msgs-srv:success-val is deprecated.  Use duco_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DucoGetFK-response>) ostream)
  "Serializes a message object of type '<DucoGetFK-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'pos))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rpy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'rpy))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DucoGetFK-response>) istream)
  "Deserializes a message object of type '<DucoGetFK-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pos) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pos)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rpy) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rpy)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DucoGetFK-response>)))
  "Returns string type for a service object of type '<DucoGetFK-response>"
  "duco_msgs/DucoGetFKResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DucoGetFK-response)))
  "Returns string type for a service object of type 'DucoGetFK-response"
  "duco_msgs/DucoGetFKResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DucoGetFK-response>)))
  "Returns md5sum for a message object of type '<DucoGetFK-response>"
  "2c07157d0fbbe168e2662645c6ac7844")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DucoGetFK-response)))
  "Returns md5sum for a message object of type 'DucoGetFK-response"
  "2c07157d0fbbe168e2662645c6ac7844")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DucoGetFK-response>)))
  "Returns full string definition for message of type '<DucoGetFK-response>"
  (cl:format cl:nil "float32[] pos~%float32[] rpy~%bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DucoGetFK-response)))
  "Returns full string definition for message of type 'DucoGetFK-response"
  (cl:format cl:nil "float32[] pos~%float32[] rpy~%bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DucoGetFK-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rpy) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DucoGetFK-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DucoGetFK-response
    (cl:cons ':pos (pos msg))
    (cl:cons ':rpy (rpy msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DucoGetFK)))
  'DucoGetFK-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DucoGetFK)))
  'DucoGetFK-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DucoGetFK)))
  "Returns string type for a service object of type '<DucoGetFK>"
  "duco_msgs/DucoGetFK")