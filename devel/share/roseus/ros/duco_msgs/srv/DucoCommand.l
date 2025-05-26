;; Auto-generated. Do not edit!


(when (boundp 'duco_msgs::DucoCommand)
  (if (not (find-package "DUCO_MSGS"))
    (make-package "DUCO_MSGS"))
  (shadow 'DucoCommand (find-package "DUCO_MSGS")))
(unless (find-package "DUCO_MSGS::DUCOCOMMAND")
  (make-package "DUCO_MSGS::DUCOCOMMAND"))
(unless (find-package "DUCO_MSGS::DUCOCOMMANDREQUEST")
  (make-package "DUCO_MSGS::DUCOCOMMANDREQUEST"))
(unless (find-package "DUCO_MSGS::DUCOCOMMANDRESPONSE")
  (make-package "DUCO_MSGS::DUCOCOMMANDRESPONSE"))

(in-package "ROS")





(defclass duco_msgs::DucoCommandRequest
  :super ros::object
  :slots (_commandType _operateType _script _program _col_on _sensitivity ))

(defmethod duco_msgs::DucoCommandRequest
  (:init
   (&key
    ((:commandType __commandType) 0)
    ((:operateType __operateType) 0)
    ((:script __script) "")
    ((:program __program) "")
    ((:col_on __col_on) nil)
    ((:sensitivity __sensitivity) 0)
    )
   (send-super :init)
   (setq _commandType (round __commandType))
   (setq _operateType (round __operateType))
   (setq _script (string __script))
   (setq _program (string __program))
   (setq _col_on __col_on)
   (setq _sensitivity (round __sensitivity))
   self)
  (:commandType
   (&optional __commandType)
   (if __commandType (setq _commandType __commandType)) _commandType)
  (:operateType
   (&optional __operateType)
   (if __operateType (setq _operateType __operateType)) _operateType)
  (:script
   (&optional __script)
   (if __script (setq _script __script)) _script)
  (:program
   (&optional __program)
   (if __program (setq _program __program)) _program)
  (:col_on
   (&optional __col_on)
   (if __col_on (setq _col_on __col_on)) _col_on)
  (:sensitivity
   (&optional __sensitivity)
   (if __sensitivity (setq _sensitivity __sensitivity)) _sensitivity)
  (:serialization-length
   ()
   (+
    ;; int8 _commandType
    1
    ;; int8 _operateType
    1
    ;; string _script
    4 (length _script)
    ;; string _program
    4 (length _program)
    ;; bool _col_on
    1
    ;; int8 _sensitivity
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _commandType
       (write-byte _commandType s)
     ;; int8 _operateType
       (write-byte _operateType s)
     ;; string _script
       (write-long (length _script) s) (princ _script s)
     ;; string _program
       (write-long (length _program) s) (princ _program s)
     ;; bool _col_on
       (if _col_on (write-byte -1 s) (write-byte 0 s))
     ;; int8 _sensitivity
       (write-byte _sensitivity s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _commandType
     (setq _commandType (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _commandType 127) (setq _commandType (- _commandType 256)))
   ;; int8 _operateType
     (setq _operateType (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _operateType 127) (setq _operateType (- _operateType 256)))
   ;; string _script
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _script (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _program
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _program (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _col_on
     (setq _col_on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _sensitivity
     (setq _sensitivity (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _sensitivity 127) (setq _sensitivity (- _sensitivity 256)))
   ;;
   self)
  )

(defclass duco_msgs::DucoCommandResponse
  :super ros::object
  :slots (_state ))

(defmethod duco_msgs::DucoCommandResponse
  (:init
   (&key
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _state (round __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; int32 _state
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _state
       (write-long _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass duco_msgs::DucoCommand
  :super ros::object
  :slots ())

(setf (get duco_msgs::DucoCommand :md5sum-) "8413a3d40877c7c622b23a57cfe681a7")
(setf (get duco_msgs::DucoCommand :datatype-) "duco_msgs/DucoCommand")
(setf (get duco_msgs::DucoCommand :request) duco_msgs::DucoCommandRequest)
(setf (get duco_msgs::DucoCommand :response) duco_msgs::DucoCommandResponse)

(defmethod duco_msgs::DucoCommandRequest
  (:response () (instance duco_msgs::DucoCommandResponse :init)))

(setf (get duco_msgs::DucoCommandRequest :md5sum-) "8413a3d40877c7c622b23a57cfe681a7")
(setf (get duco_msgs::DucoCommandRequest :datatype-) "duco_msgs/DucoCommandRequest")
(setf (get duco_msgs::DucoCommandRequest :definition-)
      "#command type
int8 commandType
int8 operateType

#script
string script

#program name
string program

#col_control
bool col_on
int8 sensitivity
---
#true:finish false:error
int32 state

")

(setf (get duco_msgs::DucoCommandResponse :md5sum-) "8413a3d40877c7c622b23a57cfe681a7")
(setf (get duco_msgs::DucoCommandResponse :datatype-) "duco_msgs/DucoCommandResponse")
(setf (get duco_msgs::DucoCommandResponse :definition-)
      "#command type
int8 commandType
int8 operateType

#script
string script

#program name
string program

#col_control
bool col_on
int8 sensitivity
---
#true:finish false:error
int32 state

")



(provide :duco_msgs/DucoCommand "8413a3d40877c7c622b23a57cfe681a7")


