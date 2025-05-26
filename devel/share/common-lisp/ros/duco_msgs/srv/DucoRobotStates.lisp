; Auto-generated. Do not edit!


(cl:in-package duco_msgs-srv)


;//! \htmlinclude DucoRobotStates-request.msg.html

(cl:defclass <DucoRobotStates-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass DucoRobotStates-request (<DucoRobotStates-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DucoRobotStates-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DucoRobotStates-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name duco_msgs-srv:<DucoRobotStates-request> is deprecated: use duco_msgs-srv:DucoRobotStates-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DucoRobotStates-request>) ostream)
  "Serializes a message object of type '<DucoRobotStates-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DucoRobotStates-request>) istream)
  "Deserializes a message object of type '<DucoRobotStates-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DucoRobotStates-request>)))
  "Returns string type for a service object of type '<DucoRobotStates-request>"
  "duco_msgs/DucoRobotStatesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DucoRobotStates-request)))
  "Returns string type for a service object of type 'DucoRobotStates-request"
  "duco_msgs/DucoRobotStatesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DucoRobotStates-request>)))
  "Returns md5sum for a message object of type '<DucoRobotStates-request>"
  "7b889afd34d7cc1017eae13c8627bb97")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DucoRobotStates-request)))
  "Returns md5sum for a message object of type 'DucoRobotStates-request"
  "7b889afd34d7cc1017eae13c8627bb97")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DucoRobotStates-request>)))
  "Returns full string definition for message of type '<DucoRobotStates-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DucoRobotStates-request)))
  "Returns full string definition for message of type 'DucoRobotStates-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DucoRobotStates-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DucoRobotStates-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DucoRobotStates-request
))
;//! \htmlinclude DucoRobotStates-response.msg.html

(cl:defclass <DucoRobotStates-response> (roslisp-msg-protocol:ros-message)
  ((robot_states
    :reader robot_states
    :initarg :robot_states
    :type duco_msgs-msg:DucoRobotState
    :initform (cl:make-instance 'duco_msgs-msg:DucoRobotState)))
)

(cl:defclass DucoRobotStates-response (<DucoRobotStates-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DucoRobotStates-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DucoRobotStates-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name duco_msgs-srv:<DucoRobotStates-response> is deprecated: use duco_msgs-srv:DucoRobotStates-response instead.")))

(cl:ensure-generic-function 'robot_states-val :lambda-list '(m))
(cl:defmethod robot_states-val ((m <DucoRobotStates-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duco_msgs-srv:robot_states-val is deprecated.  Use duco_msgs-srv:robot_states instead.")
  (robot_states m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DucoRobotStates-response>) ostream)
  "Serializes a message object of type '<DucoRobotStates-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_states) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DucoRobotStates-response>) istream)
  "Deserializes a message object of type '<DucoRobotStates-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_states) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DucoRobotStates-response>)))
  "Returns string type for a service object of type '<DucoRobotStates-response>"
  "duco_msgs/DucoRobotStatesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DucoRobotStates-response)))
  "Returns string type for a service object of type 'DucoRobotStates-response"
  "duco_msgs/DucoRobotStatesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DucoRobotStates-response>)))
  "Returns md5sum for a message object of type '<DucoRobotStates-response>"
  "7b889afd34d7cc1017eae13c8627bb97")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DucoRobotStates-response)))
  "Returns md5sum for a message object of type 'DucoRobotStates-response"
  "7b889afd34d7cc1017eae13c8627bb97")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DucoRobotStates-response>)))
  "Returns full string definition for message of type '<DucoRobotStates-response>"
  (cl:format cl:nil "duco_msgs/DucoRobotState robot_states~%~%~%================================================================================~%MSG: duco_msgs/DucoRobotState~%float64[7]  joint_expect_position~%float64[7]  joint_expect_velocity~%float64[7]  joint_expect_accelera~%float64[7]  joint_actual_position~%float64[7]  joint_actual_velocity~%float64[7]  joint_actual_accelera~%float64[7]  joint_actual_current~%float64[7]  joint_temperature~%float64[7] driver_temperature~%float64[7] cart_expect_position~%float64[7] cart_expect_velocity~%float64[7] cart_expect_accelera~%float64[7] cart_actual_position~%float64[7] cart_actual_velocity~%float64[7] cart_actual_accelera~%bool[7]   slave_ready~%bool collision~%int8 collision_axis~%bool emc_stop_signal~%int8 robot_state~%int32 robot_error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DucoRobotStates-response)))
  "Returns full string definition for message of type 'DucoRobotStates-response"
  (cl:format cl:nil "duco_msgs/DucoRobotState robot_states~%~%~%================================================================================~%MSG: duco_msgs/DucoRobotState~%float64[7]  joint_expect_position~%float64[7]  joint_expect_velocity~%float64[7]  joint_expect_accelera~%float64[7]  joint_actual_position~%float64[7]  joint_actual_velocity~%float64[7]  joint_actual_accelera~%float64[7]  joint_actual_current~%float64[7]  joint_temperature~%float64[7] driver_temperature~%float64[7] cart_expect_position~%float64[7] cart_expect_velocity~%float64[7] cart_expect_accelera~%float64[7] cart_actual_position~%float64[7] cart_actual_velocity~%float64[7] cart_actual_accelera~%bool[7]   slave_ready~%bool collision~%int8 collision_axis~%bool emc_stop_signal~%int8 robot_state~%int32 robot_error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DucoRobotStates-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_states))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DucoRobotStates-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DucoRobotStates-response
    (cl:cons ':robot_states (robot_states msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DucoRobotStates)))
  'DucoRobotStates-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DucoRobotStates)))
  'DucoRobotStates-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DucoRobotStates)))
  "Returns string type for a service object of type '<DucoRobotStates>"
  "duco_msgs/DucoRobotStates")