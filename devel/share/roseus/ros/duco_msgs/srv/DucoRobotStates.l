;; Auto-generated. Do not edit!


(when (boundp 'duco_msgs::DucoRobotStates)
  (if (not (find-package "DUCO_MSGS"))
    (make-package "DUCO_MSGS"))
  (shadow 'DucoRobotStates (find-package "DUCO_MSGS")))
(unless (find-package "DUCO_MSGS::DUCOROBOTSTATES")
  (make-package "DUCO_MSGS::DUCOROBOTSTATES"))
(unless (find-package "DUCO_MSGS::DUCOROBOTSTATESREQUEST")
  (make-package "DUCO_MSGS::DUCOROBOTSTATESREQUEST"))
(unless (find-package "DUCO_MSGS::DUCOROBOTSTATESRESPONSE")
  (make-package "DUCO_MSGS::DUCOROBOTSTATESRESPONSE"))

(in-package "ROS")





(defclass duco_msgs::DucoRobotStatesRequest
  :super ros::object
  :slots ())

(defmethod duco_msgs::DucoRobotStatesRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass duco_msgs::DucoRobotStatesResponse
  :super ros::object
  :slots (_robot_states ))

(defmethod duco_msgs::DucoRobotStatesResponse
  (:init
   (&key
    ((:robot_states __robot_states) (instance duco_msgs::DucoRobotState :init))
    )
   (send-super :init)
   (setq _robot_states __robot_states)
   self)
  (:robot_states
   (&rest __robot_states)
   (if (keywordp (car __robot_states))
       (send* _robot_states __robot_states)
     (progn
       (if __robot_states (setq _robot_states (car __robot_states)))
       _robot_states)))
  (:serialization-length
   ()
   (+
    ;; duco_msgs/DucoRobotState _robot_states
    (send _robot_states :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; duco_msgs/DucoRobotState _robot_states
       (send _robot_states :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; duco_msgs/DucoRobotState _robot_states
     (send _robot_states :deserialize buf ptr-) (incf ptr- (send _robot_states :serialization-length))
   ;;
   self)
  )

(defclass duco_msgs::DucoRobotStates
  :super ros::object
  :slots ())

(setf (get duco_msgs::DucoRobotStates :md5sum-) "7b889afd34d7cc1017eae13c8627bb97")
(setf (get duco_msgs::DucoRobotStates :datatype-) "duco_msgs/DucoRobotStates")
(setf (get duco_msgs::DucoRobotStates :request) duco_msgs::DucoRobotStatesRequest)
(setf (get duco_msgs::DucoRobotStates :response) duco_msgs::DucoRobotStatesResponse)

(defmethod duco_msgs::DucoRobotStatesRequest
  (:response () (instance duco_msgs::DucoRobotStatesResponse :init)))

(setf (get duco_msgs::DucoRobotStatesRequest :md5sum-) "7b889afd34d7cc1017eae13c8627bb97")
(setf (get duco_msgs::DucoRobotStatesRequest :datatype-) "duco_msgs/DucoRobotStatesRequest")
(setf (get duco_msgs::DucoRobotStatesRequest :definition-)
      "---
duco_msgs/DucoRobotState robot_states


================================================================================
MSG: duco_msgs/DucoRobotState
float64[7]  joint_expect_position
float64[7]  joint_expect_velocity
float64[7]  joint_expect_accelera
float64[7]  joint_actual_position
float64[7]  joint_actual_velocity
float64[7]  joint_actual_accelera
float64[7]  joint_actual_current
float64[7]  joint_temperature
float64[7] driver_temperature
float64[7] cart_expect_position
float64[7] cart_expect_velocity
float64[7] cart_expect_accelera
float64[7] cart_actual_position
float64[7] cart_actual_velocity
float64[7] cart_actual_accelera
bool[7]   slave_ready
bool collision
int8 collision_axis
bool emc_stop_signal
int8 robot_state
int32 robot_error

")

(setf (get duco_msgs::DucoRobotStatesResponse :md5sum-) "7b889afd34d7cc1017eae13c8627bb97")
(setf (get duco_msgs::DucoRobotStatesResponse :datatype-) "duco_msgs/DucoRobotStatesResponse")
(setf (get duco_msgs::DucoRobotStatesResponse :definition-)
      "---
duco_msgs/DucoRobotState robot_states


================================================================================
MSG: duco_msgs/DucoRobotState
float64[7]  joint_expect_position
float64[7]  joint_expect_velocity
float64[7]  joint_expect_accelera
float64[7]  joint_actual_position
float64[7]  joint_actual_velocity
float64[7]  joint_actual_accelera
float64[7]  joint_actual_current
float64[7]  joint_temperature
float64[7] driver_temperature
float64[7] cart_expect_position
float64[7] cart_expect_velocity
float64[7] cart_expect_accelera
float64[7] cart_actual_position
float64[7] cart_actual_velocity
float64[7] cart_actual_accelera
bool[7]   slave_ready
bool collision
int8 collision_axis
bool emc_stop_signal
int8 robot_state
int32 robot_error

")



(provide :duco_msgs/DucoRobotStates "7b889afd34d7cc1017eae13c8627bb97")


