;; Auto-generated. Do not edit!


(when (boundp 'duco_msgs::DucoGetIK)
  (if (not (find-package "DUCO_MSGS"))
    (make-package "DUCO_MSGS"))
  (shadow 'DucoGetIK (find-package "DUCO_MSGS")))
(unless (find-package "DUCO_MSGS::DUCOGETIK")
  (make-package "DUCO_MSGS::DUCOGETIK"))
(unless (find-package "DUCO_MSGS::DUCOGETIKREQUEST")
  (make-package "DUCO_MSGS::DUCOGETIKREQUEST"))
(unless (find-package "DUCO_MSGS::DUCOGETIKRESPONSE")
  (make-package "DUCO_MSGS::DUCOGETIKRESPONSE"))

(in-package "ROS")





(defclass duco_msgs::DucoGetIKRequest
  :super ros::object
  :slots (_ref_joint _pos _rpy ))

(defmethod duco_msgs::DucoGetIKRequest
  (:init
   (&key
    ((:ref_joint __ref_joint) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pos __pos) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:rpy __rpy) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _ref_joint __ref_joint)
   (setq _pos __pos)
   (setq _rpy __rpy)
   self)
  (:ref_joint
   (&optional __ref_joint)
   (if __ref_joint (setq _ref_joint __ref_joint)) _ref_joint)
  (:pos
   (&optional __pos)
   (if __pos (setq _pos __pos)) _pos)
  (:rpy
   (&optional __rpy)
   (if __rpy (setq _rpy __rpy)) _rpy)
  (:serialization-length
   ()
   (+
    ;; float32[] _ref_joint
    (* 4    (length _ref_joint)) 4
    ;; float32[] _pos
    (* 4    (length _pos)) 4
    ;; float32[] _rpy
    (* 4    (length _rpy)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _ref_joint
     (write-long (length _ref_joint) s)
     (dotimes (i (length _ref_joint))
       (sys::poke (elt _ref_joint i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
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
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _ref_joint
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ref_joint (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _ref_joint i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
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
   ;;
   self)
  )

(defclass duco_msgs::DucoGetIKResponse
  :super ros::object
  :slots (_joint _success ))

(defmethod duco_msgs::DucoGetIKResponse
  (:init
   (&key
    ((:joint __joint) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _joint __joint)
   (setq _success __success)
   self)
  (:joint
   (&optional __joint)
   (if __joint (setq _joint __joint)) _joint)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; float32[] _joint
    (* 4    (length _joint)) 4
    ;; bool _success
    1
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
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
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
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass duco_msgs::DucoGetIK
  :super ros::object
  :slots ())

(setf (get duco_msgs::DucoGetIK :md5sum-) "733c3eca96e1291b2ee883e81a04df06")
(setf (get duco_msgs::DucoGetIK :datatype-) "duco_msgs/DucoGetIK")
(setf (get duco_msgs::DucoGetIK :request) duco_msgs::DucoGetIKRequest)
(setf (get duco_msgs::DucoGetIK :response) duco_msgs::DucoGetIKResponse)

(defmethod duco_msgs::DucoGetIKRequest
  (:response () (instance duco_msgs::DucoGetIKResponse :init)))

(setf (get duco_msgs::DucoGetIKRequest :md5sum-) "733c3eca96e1291b2ee883e81a04df06")
(setf (get duco_msgs::DucoGetIKRequest :datatype-) "duco_msgs/DucoGetIKRequest")
(setf (get duco_msgs::DucoGetIKRequest :definition-)
      "float32[] ref_joint
float32[] pos
float32[] rpy
---
float32[] joint
bool success

")

(setf (get duco_msgs::DucoGetIKResponse :md5sum-) "733c3eca96e1291b2ee883e81a04df06")
(setf (get duco_msgs::DucoGetIKResponse :datatype-) "duco_msgs/DucoGetIKResponse")
(setf (get duco_msgs::DucoGetIKResponse :definition-)
      "float32[] ref_joint
float32[] pos
float32[] rpy
---
float32[] joint
bool success

")



(provide :duco_msgs/DucoGetIK "733c3eca96e1291b2ee883e81a04df06")


