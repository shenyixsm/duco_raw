;; Auto-generated. Do not edit!


(when (boundp 'duco_msgs::DucoRobotState)
  (if (not (find-package "DUCO_MSGS"))
    (make-package "DUCO_MSGS"))
  (shadow 'DucoRobotState (find-package "DUCO_MSGS")))
(unless (find-package "DUCO_MSGS::DUCOROBOTSTATE")
  (make-package "DUCO_MSGS::DUCOROBOTSTATE"))

(in-package "ROS")
;;//! \htmlinclude DucoRobotState.msg.html


(defclass duco_msgs::DucoRobotState
  :super ros::object
  :slots (_joint_expect_position _joint_expect_velocity _joint_expect_accelera _joint_actual_position _joint_actual_velocity _joint_actual_accelera _joint_actual_current _joint_temperature _driver_temperature _cart_expect_position _cart_expect_velocity _cart_expect_accelera _cart_actual_position _cart_actual_velocity _cart_actual_accelera _slave_ready _collision _collision_axis _emc_stop_signal _robot_state _robot_error ))

(defmethod duco_msgs::DucoRobotState
  (:init
   (&key
    ((:joint_expect_position __joint_expect_position) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:joint_expect_velocity __joint_expect_velocity) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:joint_expect_accelera __joint_expect_accelera) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:joint_actual_position __joint_actual_position) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:joint_actual_velocity __joint_actual_velocity) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:joint_actual_accelera __joint_actual_accelera) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:joint_actual_current __joint_actual_current) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:joint_temperature __joint_temperature) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:driver_temperature __driver_temperature) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:cart_expect_position __cart_expect_position) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:cart_expect_velocity __cart_expect_velocity) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:cart_expect_accelera __cart_expect_accelera) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:cart_actual_position __cart_actual_position) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:cart_actual_velocity __cart_actual_velocity) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:cart_actual_accelera __cart_actual_accelera) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:slave_ready __slave_ready) (let (r) (dotimes (i 7) (push nil r)) r))
    ((:collision __collision) nil)
    ((:collision_axis __collision_axis) 0)
    ((:emc_stop_signal __emc_stop_signal) nil)
    ((:robot_state __robot_state) 0)
    ((:robot_error __robot_error) 0)
    )
   (send-super :init)
   (setq _joint_expect_position __joint_expect_position)
   (setq _joint_expect_velocity __joint_expect_velocity)
   (setq _joint_expect_accelera __joint_expect_accelera)
   (setq _joint_actual_position __joint_actual_position)
   (setq _joint_actual_velocity __joint_actual_velocity)
   (setq _joint_actual_accelera __joint_actual_accelera)
   (setq _joint_actual_current __joint_actual_current)
   (setq _joint_temperature __joint_temperature)
   (setq _driver_temperature __driver_temperature)
   (setq _cart_expect_position __cart_expect_position)
   (setq _cart_expect_velocity __cart_expect_velocity)
   (setq _cart_expect_accelera __cart_expect_accelera)
   (setq _cart_actual_position __cart_actual_position)
   (setq _cart_actual_velocity __cart_actual_velocity)
   (setq _cart_actual_accelera __cart_actual_accelera)
   (setq _slave_ready __slave_ready)
   (setq _collision __collision)
   (setq _collision_axis (round __collision_axis))
   (setq _emc_stop_signal __emc_stop_signal)
   (setq _robot_state (round __robot_state))
   (setq _robot_error (round __robot_error))
   self)
  (:joint_expect_position
   (&optional __joint_expect_position)
   (if __joint_expect_position (setq _joint_expect_position __joint_expect_position)) _joint_expect_position)
  (:joint_expect_velocity
   (&optional __joint_expect_velocity)
   (if __joint_expect_velocity (setq _joint_expect_velocity __joint_expect_velocity)) _joint_expect_velocity)
  (:joint_expect_accelera
   (&optional __joint_expect_accelera)
   (if __joint_expect_accelera (setq _joint_expect_accelera __joint_expect_accelera)) _joint_expect_accelera)
  (:joint_actual_position
   (&optional __joint_actual_position)
   (if __joint_actual_position (setq _joint_actual_position __joint_actual_position)) _joint_actual_position)
  (:joint_actual_velocity
   (&optional __joint_actual_velocity)
   (if __joint_actual_velocity (setq _joint_actual_velocity __joint_actual_velocity)) _joint_actual_velocity)
  (:joint_actual_accelera
   (&optional __joint_actual_accelera)
   (if __joint_actual_accelera (setq _joint_actual_accelera __joint_actual_accelera)) _joint_actual_accelera)
  (:joint_actual_current
   (&optional __joint_actual_current)
   (if __joint_actual_current (setq _joint_actual_current __joint_actual_current)) _joint_actual_current)
  (:joint_temperature
   (&optional __joint_temperature)
   (if __joint_temperature (setq _joint_temperature __joint_temperature)) _joint_temperature)
  (:driver_temperature
   (&optional __driver_temperature)
   (if __driver_temperature (setq _driver_temperature __driver_temperature)) _driver_temperature)
  (:cart_expect_position
   (&optional __cart_expect_position)
   (if __cart_expect_position (setq _cart_expect_position __cart_expect_position)) _cart_expect_position)
  (:cart_expect_velocity
   (&optional __cart_expect_velocity)
   (if __cart_expect_velocity (setq _cart_expect_velocity __cart_expect_velocity)) _cart_expect_velocity)
  (:cart_expect_accelera
   (&optional __cart_expect_accelera)
   (if __cart_expect_accelera (setq _cart_expect_accelera __cart_expect_accelera)) _cart_expect_accelera)
  (:cart_actual_position
   (&optional __cart_actual_position)
   (if __cart_actual_position (setq _cart_actual_position __cart_actual_position)) _cart_actual_position)
  (:cart_actual_velocity
   (&optional __cart_actual_velocity)
   (if __cart_actual_velocity (setq _cart_actual_velocity __cart_actual_velocity)) _cart_actual_velocity)
  (:cart_actual_accelera
   (&optional __cart_actual_accelera)
   (if __cart_actual_accelera (setq _cart_actual_accelera __cart_actual_accelera)) _cart_actual_accelera)
  (:slave_ready
   (&optional __slave_ready)
   (if __slave_ready (setq _slave_ready __slave_ready)) _slave_ready)
  (:collision
   (&optional __collision)
   (if __collision (setq _collision __collision)) _collision)
  (:collision_axis
   (&optional __collision_axis)
   (if __collision_axis (setq _collision_axis __collision_axis)) _collision_axis)
  (:emc_stop_signal
   (&optional __emc_stop_signal)
   (if __emc_stop_signal (setq _emc_stop_signal __emc_stop_signal)) _emc_stop_signal)
  (:robot_state
   (&optional __robot_state)
   (if __robot_state (setq _robot_state __robot_state)) _robot_state)
  (:robot_error
   (&optional __robot_error)
   (if __robot_error (setq _robot_error __robot_error)) _robot_error)
  (:serialization-length
   ()
   (+
    ;; float64[7] _joint_expect_position
    (* 8    7)
    ;; float64[7] _joint_expect_velocity
    (* 8    7)
    ;; float64[7] _joint_expect_accelera
    (* 8    7)
    ;; float64[7] _joint_actual_position
    (* 8    7)
    ;; float64[7] _joint_actual_velocity
    (* 8    7)
    ;; float64[7] _joint_actual_accelera
    (* 8    7)
    ;; float64[7] _joint_actual_current
    (* 8    7)
    ;; float64[7] _joint_temperature
    (* 8    7)
    ;; float64[7] _driver_temperature
    (* 8    7)
    ;; float64[7] _cart_expect_position
    (* 8    7)
    ;; float64[7] _cart_expect_velocity
    (* 8    7)
    ;; float64[7] _cart_expect_accelera
    (* 8    7)
    ;; float64[7] _cart_actual_position
    (* 8    7)
    ;; float64[7] _cart_actual_velocity
    (* 8    7)
    ;; float64[7] _cart_actual_accelera
    (* 8    7)
    ;; bool[7] _slave_ready
    (* 1    7)
    ;; bool _collision
    1
    ;; int8 _collision_axis
    1
    ;; bool _emc_stop_signal
    1
    ;; int8 _robot_state
    1
    ;; int32 _robot_error
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[7] _joint_expect_position
     (dotimes (i 7)
       (sys::poke (elt _joint_expect_position i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[7] _joint_expect_velocity
     (dotimes (i 7)
       (sys::poke (elt _joint_expect_velocity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[7] _joint_expect_accelera
     (dotimes (i 7)
       (sys::poke (elt _joint_expect_accelera i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[7] _joint_actual_position
     (dotimes (i 7)
       (sys::poke (elt _joint_actual_position i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[7] _joint_actual_velocity
     (dotimes (i 7)
       (sys::poke (elt _joint_actual_velocity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[7] _joint_actual_accelera
     (dotimes (i 7)
       (sys::poke (elt _joint_actual_accelera i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[7] _joint_actual_current
     (dotimes (i 7)
       (sys::poke (elt _joint_actual_current i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[7] _joint_temperature
     (dotimes (i 7)
       (sys::poke (elt _joint_temperature i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[7] _driver_temperature
     (dotimes (i 7)
       (sys::poke (elt _driver_temperature i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[7] _cart_expect_position
     (dotimes (i 7)
       (sys::poke (elt _cart_expect_position i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[7] _cart_expect_velocity
     (dotimes (i 7)
       (sys::poke (elt _cart_expect_velocity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[7] _cart_expect_accelera
     (dotimes (i 7)
       (sys::poke (elt _cart_expect_accelera i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[7] _cart_actual_position
     (dotimes (i 7)
       (sys::poke (elt _cart_actual_position i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[7] _cart_actual_velocity
     (dotimes (i 7)
       (sys::poke (elt _cart_actual_velocity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[7] _cart_actual_accelera
     (dotimes (i 7)
       (sys::poke (elt _cart_actual_accelera i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; bool[7] _slave_ready
     (dotimes (i 7)
       (if (elt _slave_ready i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool _collision
       (if _collision (write-byte -1 s) (write-byte 0 s))
     ;; int8 _collision_axis
       (write-byte _collision_axis s)
     ;; bool _emc_stop_signal
       (if _emc_stop_signal (write-byte -1 s) (write-byte 0 s))
     ;; int8 _robot_state
       (write-byte _robot_state s)
     ;; int32 _robot_error
       (write-long _robot_error s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[7] _joint_expect_position
   (dotimes (i (length _joint_expect_position))
     (setf (elt _joint_expect_position i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[7] _joint_expect_velocity
   (dotimes (i (length _joint_expect_velocity))
     (setf (elt _joint_expect_velocity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[7] _joint_expect_accelera
   (dotimes (i (length _joint_expect_accelera))
     (setf (elt _joint_expect_accelera i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[7] _joint_actual_position
   (dotimes (i (length _joint_actual_position))
     (setf (elt _joint_actual_position i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[7] _joint_actual_velocity
   (dotimes (i (length _joint_actual_velocity))
     (setf (elt _joint_actual_velocity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[7] _joint_actual_accelera
   (dotimes (i (length _joint_actual_accelera))
     (setf (elt _joint_actual_accelera i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[7] _joint_actual_current
   (dotimes (i (length _joint_actual_current))
     (setf (elt _joint_actual_current i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[7] _joint_temperature
   (dotimes (i (length _joint_temperature))
     (setf (elt _joint_temperature i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[7] _driver_temperature
   (dotimes (i (length _driver_temperature))
     (setf (elt _driver_temperature i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[7] _cart_expect_position
   (dotimes (i (length _cart_expect_position))
     (setf (elt _cart_expect_position i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[7] _cart_expect_velocity
   (dotimes (i (length _cart_expect_velocity))
     (setf (elt _cart_expect_velocity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[7] _cart_expect_accelera
   (dotimes (i (length _cart_expect_accelera))
     (setf (elt _cart_expect_accelera i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[7] _cart_actual_position
   (dotimes (i (length _cart_actual_position))
     (setf (elt _cart_actual_position i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[7] _cart_actual_velocity
   (dotimes (i (length _cart_actual_velocity))
     (setf (elt _cart_actual_velocity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[7] _cart_actual_accelera
   (dotimes (i (length _cart_actual_accelera))
     (setf (elt _cart_actual_accelera i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; bool[7] _slave_ready
   (dotimes (i (length _slave_ready))
     (setf (elt _slave_ready i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     )
   ;; bool _collision
     (setq _collision (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _collision_axis
     (setq _collision_axis (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _collision_axis 127) (setq _collision_axis (- _collision_axis 256)))
   ;; bool _emc_stop_signal
     (setq _emc_stop_signal (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _robot_state
     (setq _robot_state (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _robot_state 127) (setq _robot_state (- _robot_state 256)))
   ;; int32 _robot_error
     (setq _robot_error (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get duco_msgs::DucoRobotState :md5sum-) "28ff9df01133ab7a99e78c6a90ffd27e")
(setf (get duco_msgs::DucoRobotState :datatype-) "duco_msgs/DucoRobotState")
(setf (get duco_msgs::DucoRobotState :definition-)
      "float64[7]  joint_expect_position
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



(provide :duco_msgs/DucoRobotState "28ff9df01133ab7a99e78c6a90ffd27e")


