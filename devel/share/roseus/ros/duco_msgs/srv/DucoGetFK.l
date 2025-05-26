;; Auto-generated. Do not edit!


(when (boundp 'duco_msgs::DucoGetFK)
  (if (not (find-package "DUCO_MSGS"))
    (make-package "DUCO_MSGS"))
  (shadow 'DucoGetFK (find-package "DUCO_MSGS")))
(unless (find-package "DUCO_MSGS::DUCOGETFK")
  (make-package "DUCO_MSGS::DUCOGETFK"))
(unless (find-package "DUCO_MSGS::DUCOGETFKREQUEST")
  (make-package "DUCO_MSGS::DUCOGETFKREQUEST"))
(unless (find-package "DUCO_MSGS::DUCOGETFKRESPONSE")
  (make-package "DUCO_MSGS::DUCOGETFKRESPONSE"))

(in-package "ROS")





(defclass duco_msgs::DucoGetFKRequest
  :super ros::object
  :slots (_joint ))

(defmethod duco_msgs::DucoGetFKRequest
  (:init
   (&key
    ((:joint __joint) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint __joint)
   self)
  (:joint
   (&optional __joint)
   (if __joint (setq _joint __joint)) _joint)
  (:serialization-length
   ()
   (+
    ;; float32[] _joint
    (* 4    (length _joint)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _joint
     (write-long (length _joint) s)
     (dotimes (i (length _joint))
       (sys::poke (elt _joint i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _joint
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass duco_msgs::DucoGetFKResponse
  :super ros::object
  :slots (_pos _rpy _success ))

(defmethod duco_msgs::DucoGetFKResponse
  (:init
   (&key
    ((:pos __pos) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:rpy __rpy) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _pos __pos)
   (setq _rpy __rpy)
   (setq _success __success)
   self)
  (:pos
   (&optional __pos)
   (if __pos (setq _pos __pos)) _pos)
  (:rpy
   (&optional __rpy)
   (if __rpy (setq _rpy __rpy)) _rpy)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; float32[] _pos
    (* 4    (length _pos)) 4
    ;; float32[] _rpy
    (* 4    (length _rpy)) 4
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _pos
     (write-long (length _pos) s)
     (dotimes (i (length _pos))
       (sys::poke (elt _pos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _rpy
     (write-long (length _rpy) s)
     (dotimes (i (length _rpy))
       (sys::poke (elt _rpy i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _rpy
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rpy (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _rpy i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass duco_msgs::DucoGetFK
  :super ros::object
  :slots ())

(setf (get duco_msgs::DucoGetFK :md5sum-) "2c07157d0fbbe168e2662645c6ac7844")
(setf (get duco_msgs::DucoGetFK :datatype-) "duco_msgs/DucoGetFK")
(setf (get duco_msgs::DucoGetFK :request) duco_msgs::DucoGetFKRequest)
(setf (get duco_msgs::DucoGetFK :response) duco_msgs::DucoGetFKResponse)

(defmethod duco_msgs::DucoGetFKRequest
  (:response () (instance duco_msgs::DucoGetFKResponse :init)))

(setf (get duco_msgs::DucoGetFKRequest :md5sum-) "2c07157d0fbbe168e2662645c6ac7844")
(setf (get duco_msgs::DucoGetFKRequest :datatype-) "duco_msgs/DucoGetFKRequest")
(setf (get duco_msgs::DucoGetFKRequest :definition-)
      "float32[] joint
---
float32[] pos
float32[] rpy
bool success


")

(setf (get duco_msgs::DucoGetFKResponse :md5sum-) "2c07157d0fbbe168e2662645c6ac7844")
(setf (get duco_msgs::DucoGetFKResponse :datatype-) "duco_msgs/DucoGetFKResponse")
(setf (get duco_msgs::DucoGetFKResponse :definition-)
      "float32[] joint
---
float32[] pos
float32[] rpy
bool success


")



(provide :duco_msgs/DucoGetFK "2c07157d0fbbe168e2662645c6ac7844")


