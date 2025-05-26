;; Auto-generated. Do not edit!


(when (boundp 'duco_msgs::DucoIOState)
  (if (not (find-package "DUCO_MSGS"))
    (make-package "DUCO_MSGS"))
  (shadow 'DucoIOState (find-package "DUCO_MSGS")))
(unless (find-package "DUCO_MSGS::DUCOIOSTATE")
  (make-package "DUCO_MSGS::DUCOIOSTATE"))

(in-package "ROS")
;;//! \htmlinclude DucoIOState.msg.html


(defclass duco_msgs::DucoIOState
  :super ros::object
  :slots (_stamp _digital_in_states _digital_out_states _tool_in_states _tool_out_states _analog_in_states _analog_out_states ))

(defmethod duco_msgs::DucoIOState
  (:init
   (&key
    ((:stamp __stamp) "")
    ((:digital_in_states __digital_in_states) (let (r) (dotimes (i 0) (push (instance duco_msgs::DucoDigital :init) r)) r))
    ((:digital_out_states __digital_out_states) (let (r) (dotimes (i 0) (push (instance duco_msgs::DucoDigital :init) r)) r))
    ((:tool_in_states __tool_in_states) (let (r) (dotimes (i 0) (push (instance duco_msgs::DucoDigital :init) r)) r))
    ((:tool_out_states __tool_out_states) (let (r) (dotimes (i 0) (push (instance duco_msgs::DucoDigital :init) r)) r))
    ((:analog_in_states __analog_in_states) (let (r) (dotimes (i 0) (push (instance duco_msgs::DucoAnalog :init) r)) r))
    ((:analog_out_states __analog_out_states) (let (r) (dotimes (i 0) (push (instance duco_msgs::DucoAnalog :init) r)) r))
    )
   (send-super :init)
   (setq _stamp (string __stamp))
   (setq _digital_in_states __digital_in_states)
   (setq _digital_out_states __digital_out_states)
   (setq _tool_in_states __tool_in_states)
   (setq _tool_out_states __tool_out_states)
   (setq _analog_in_states __analog_in_states)
   (setq _analog_out_states __analog_out_states)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:digital_in_states
   (&rest __digital_in_states)
   (if (keywordp (car __digital_in_states))
       (send* _digital_in_states __digital_in_states)
     (progn
       (if __digital_in_states (setq _digital_in_states (car __digital_in_states)))
       _digital_in_states)))
  (:digital_out_states
   (&rest __digital_out_states)
   (if (keywordp (car __digital_out_states))
       (send* _digital_out_states __digital_out_states)
     (progn
       (if __digital_out_states (setq _digital_out_states (car __digital_out_states)))
       _digital_out_states)))
  (:tool_in_states
   (&rest __tool_in_states)
   (if (keywordp (car __tool_in_states))
       (send* _tool_in_states __tool_in_states)
     (progn
       (if __tool_in_states (setq _tool_in_states (car __tool_in_states)))
       _tool_in_states)))
  (:tool_out_states
   (&rest __tool_out_states)
   (if (keywordp (car __tool_out_states))
       (send* _tool_out_states __tool_out_states)
     (progn
       (if __tool_out_states (setq _tool_out_states (car __tool_out_states)))
       _tool_out_states)))
  (:analog_in_states
   (&rest __analog_in_states)
   (if (keywordp (car __analog_in_states))
       (send* _analog_in_states __analog_in_states)
     (progn
       (if __analog_in_states (setq _analog_in_states (car __analog_in_states)))
       _analog_in_states)))
  (:analog_out_states
   (&rest __analog_out_states)
   (if (keywordp (car __analog_out_states))
       (send* _analog_out_states __analog_out_states)
     (progn
       (if __analog_out_states (setq _analog_out_states (car __analog_out_states)))
       _analog_out_states)))
  (:serialization-length
   ()
   (+
    ;; string _stamp
    4 (length _stamp)
    ;; duco_msgs/DucoDigital[] _digital_in_states
    (apply #'+ (send-all _digital_in_states :serialization-length)) 4
    ;; duco_msgs/DucoDigital[] _digital_out_states
    (apply #'+ (send-all _digital_out_states :serialization-length)) 4
    ;; duco_msgs/DucoDigital[] _tool_in_states
    (apply #'+ (send-all _tool_in_states :serialization-length)) 4
    ;; duco_msgs/DucoDigital[] _tool_out_states
    (apply #'+ (send-all _tool_out_states :serialization-length)) 4
    ;; duco_msgs/DucoAnalog[] _analog_in_states
    (apply #'+ (send-all _analog_in_states :serialization-length)) 4
    ;; duco_msgs/DucoAnalog[] _analog_out_states
    (apply #'+ (send-all _analog_out_states :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _stamp
       (write-long (length _stamp) s) (princ _stamp s)
     ;; duco_msgs/DucoDigital[] _digital_in_states
     (write-long (length _digital_in_states) s)
     (dolist (elem _digital_in_states)
       (send elem :serialize s)
       )
     ;; duco_msgs/DucoDigital[] _digital_out_states
     (write-long (length _digital_out_states) s)
     (dolist (elem _digital_out_states)
       (send elem :serialize s)
       )
     ;; duco_msgs/DucoDigital[] _tool_in_states
     (write-long (length _tool_in_states) s)
     (dolist (elem _tool_in_states)
       (send elem :serialize s)
       )
     ;; duco_msgs/DucoDigital[] _tool_out_states
     (write-long (length _tool_out_states) s)
     (dolist (elem _tool_out_states)
       (send elem :serialize s)
       )
     ;; duco_msgs/DucoAnalog[] _analog_in_states
     (write-long (length _analog_in_states) s)
     (dolist (elem _analog_in_states)
       (send elem :serialize s)
       )
     ;; duco_msgs/DucoAnalog[] _analog_out_states
     (write-long (length _analog_out_states) s)
     (dolist (elem _analog_out_states)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _stamp
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _stamp (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; duco_msgs/DucoDigital[] _digital_in_states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _digital_in_states (let (r) (dotimes (i n) (push (instance duco_msgs::DucoDigital :init) r)) r))
     (dolist (elem- _digital_in_states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; duco_msgs/DucoDigital[] _digital_out_states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _digital_out_states (let (r) (dotimes (i n) (push (instance duco_msgs::DucoDigital :init) r)) r))
     (dolist (elem- _digital_out_states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; duco_msgs/DucoDigital[] _tool_in_states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tool_in_states (let (r) (dotimes (i n) (push (instance duco_msgs::DucoDigital :init) r)) r))
     (dolist (elem- _tool_in_states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; duco_msgs/DucoDigital[] _tool_out_states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tool_out_states (let (r) (dotimes (i n) (push (instance duco_msgs::DucoDigital :init) r)) r))
     (dolist (elem- _tool_out_states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; duco_msgs/DucoAnalog[] _analog_in_states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _analog_in_states (let (r) (dotimes (i n) (push (instance duco_msgs::DucoAnalog :init) r)) r))
     (dolist (elem- _analog_in_states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; duco_msgs/DucoAnalog[] _analog_out_states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _analog_out_states (let (r) (dotimes (i n) (push (instance duco_msgs::DucoAnalog :init) r)) r))
     (dolist (elem- _analog_out_states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get duco_msgs::DucoIOState :md5sum-) "2117ca0370ade6c80af07d396a3ecddd")
(setf (get duco_msgs::DucoIOState :datatype-) "duco_msgs/DucoIOState")
(setf (get duco_msgs::DucoIOState :definition-)
      "string stamp 
DucoDigital[] digital_in_states
DucoDigital[] digital_out_states
DucoDigital[] tool_in_states
DucoDigital[] tool_out_states
DucoAnalog[] analog_in_states
DucoAnalog[] analog_out_states



================================================================================
MSG: duco_msgs/DucoDigital
uint8 pin
bool flag
bool state

================================================================================
MSG: duco_msgs/DucoAnalog
uint8 pin
float64 state

")



(provide :duco_msgs/DucoIOState "2117ca0370ade6c80af07d396a3ecddd")


