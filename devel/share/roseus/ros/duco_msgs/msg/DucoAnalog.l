;; Auto-generated. Do not edit!


(when (boundp 'duco_msgs::DucoAnalog)
  (if (not (find-package "DUCO_MSGS"))
    (make-package "DUCO_MSGS"))
  (shadow 'DucoAnalog (find-package "DUCO_MSGS")))
(unless (find-package "DUCO_MSGS::DUCOANALOG")
  (make-package "DUCO_MSGS::DUCOANALOG"))

(in-package "ROS")
;;//! \htmlinclude DucoAnalog.msg.html


(defclass duco_msgs::DucoAnalog
  :super ros::object
  :slots (_pin _state ))

(defmethod duco_msgs::DucoAnalog
  (:init
   (&key
    ((:pin __pin) 0)
    ((:state __state) 0.0)
    )
   (send-super :init)
   (setq _pin (round __pin))
   (setq _state (float __state))
   self)
  (:pin
   (&optional __pin)
   (if __pin (setq _pin __pin)) _pin)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint8 _pin
    1
    ;; float64 _state
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _pin
       (write-byte _pin s)
     ;; float64 _state
       (sys::poke _state (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _pin
     (setq _pin (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _state
     (setq _state (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get duco_msgs::DucoAnalog :md5sum-) "c4fdd0f2fe59ae5f40617c11fc52844a")
(setf (get duco_msgs::DucoAnalog :datatype-) "duco_msgs/DucoAnalog")
(setf (get duco_msgs::DucoAnalog :definition-)
      "uint8 pin
float64 state

")



(provide :duco_msgs/DucoAnalog "c4fdd0f2fe59ae5f40617c11fc52844a")


