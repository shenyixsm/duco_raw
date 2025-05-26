; Auto-generated. Do not edit!


(cl:in-package duco_msgs-srv)


;//! \htmlinclude DucoGetIK-request.msg.html

(cl:defclass <DucoGetIK-request> (roslisp-msg-protocol:ros-message)
  ((ref_joint
    :reader ref_joint
    :initarg :ref_joint
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (pos
    :reader pos
    :initarg :pos
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (rpy
    :reader rpy
    :initarg :rpy
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass DucoGetIK-request (<DucoGetIK-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DucoGetIK-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DucoGetIK-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name duco_msgs-srv:<DucoGetIK-request> is deprecated: use duco_msgs-srv:DucoGetIK-request instead.")))

(cl:ensure-generic-function 'ref_joint-val :lambda-list '(m))
(cl:defmethod ref_joint-val ((m <DucoGetIK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duco_msgs-srv:ref_joint-val is deprecated.  Use duco_msgs-srv:ref_joint instead.")
  (ref_joint m))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <DucoGetIK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duco_msgs-srv:pos-val is deprecated.  Use duco_msgs-srv:pos instead.")
  (pos m))

(cl:ensure-generic-function 'rpy-val :lambda-list '(m))
(cl:defmethod rpy-val ((m <DucoGetIK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duco_msgs-srv:rpy-val is deprecated.  Use duco_msgs-srv:rpy instead.")
  (rpy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DucoGetIK-request>) ostream)
  "Serializes a message object of type '<DucoGetIK-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ref_joint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'ref_joint))
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DucoGetIK-request>) istream)
  "Deserializes a message object of type '<DucoGetIK-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ref_joint) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ref_joint)))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DucoGetIK-request>)))
  "Returns string type for a service object of type '<DucoGetIK-request>"
  "duco_msgs/DucoGetIKRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DucoGetIK-request)))
  "Returns string type for a service object of type 'DucoGetIK-request"
  "duco_msgs/DucoGetIKRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DucoGetIK-request>)))
  "Returns md5sum for a message object of type '<DucoGetIK-request>"
  "733c3eca96e1291b2ee883e81a04df06")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DucoGetIK-request)))
  "Returns md5sum for a message object of type 'DucoGetIK-request"
  "733c3eca96e1291b2ee883e81a04df06")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DucoGetIK-request>)))
  "Returns full string definition for message of type '<DucoGetIK-request>"
  (cl:format cl:nil "float32[] ref_joint~%float32[] pos~%float32[] rpy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DucoGetIK-request)))
  "Returns full string definition for message of type 'DucoGetIK-request"
  (cl:format cl:nil "float32[] ref_joint~%float32[] pos~%float32[] rpy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DucoGetIK-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ref_joint) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rpy) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DucoGetIK-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DucoGetIK-request
    (cl:cons ':ref_joint (ref_joint msg))
    (cl:cons ':pos (pos msg))
    (cl:cons ':rpy (rpy msg))
))
;//! \htmlinclude DucoGetIK-response.msg.html

(cl:defclass <DucoGetIK-response> (roslisp-msg-protocol:ros-message)
  ((joint
    :reader joint
    :initarg :joint
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DucoGetIK-response (<DucoGetIK-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DucoGetIK-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DucoGetIK-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name duco_msgs-srv:<DucoGetIK-response> is deprecated: use duco_msgs-srv:DucoGetIK-response instead.")))

(cl:ensure-generic-function 'joint-val :lambda-list '(m))
(cl:defmethod joint-val ((m <DucoGetIK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duco_msgs-srv:joint-val is deprecated.  Use duco_msgs-srv:joint instead.")
  (joint m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DucoGetIK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duco_msgs-srv:success-val is deprecated.  Use duco_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DucoGetIK-response>) ostream)
  "Serializes a message object of type '<DucoGetIK-response>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DucoGetIK-response>) istream)
  "Deserializes a message object of type '<DucoGetIK-response>"
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
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DucoGetIK-response>)))
  "Returns string type for a service object of type '<DucoGetIK-response>"
  "duco_msgs/DucoGetIKResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DucoGetIK-response)))
  "Returns string type for a service object of type 'DucoGetIK-response"
  "duco_msgs/DucoGetIKResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DucoGetIK-response>)))
  "Returns md5sum for a message object of type '<DucoGetIK-response>"
  "733c3eca96e1291b2ee883e81a04df06")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DucoGetIK-response)))
  "Returns md5sum for a message object of type 'DucoGetIK-response"
  "733c3eca96e1291b2ee883e81a04df06")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DucoGetIK-response>)))
  "Returns full string definition for message of type '<DucoGetIK-response>"
  (cl:format cl:nil "float32[] joint~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DucoGetIK-response)))
  "Returns full string definition for message of type 'DucoGetIK-response"
  (cl:format cl:nil "float32[] joint~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DucoGetIK-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DucoGetIK-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DucoGetIK-response
    (cl:cons ':joint (joint msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DucoGetIK)))
  'DucoGetIK-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DucoGetIK)))
  'DucoGetIK-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DucoGetIK)))
  "Returns string type for a service object of type '<DucoGetIK>"
  "duco_msgs/DucoGetIK")