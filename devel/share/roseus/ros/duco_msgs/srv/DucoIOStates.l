;; Auto-generated. Do not edit!


(when (boundp 'duco_msgs::DucoIOStates)
  (if (not (find-package "DUCO_MSGS"))
    (make-package "DUCO_MSGS"))
  (shadow 'DucoIOStates (find-package "DUCO_MSGS")))
(unless (find-package "DUCO_MSGS::DUCOIOSTATES")
  (make-package "DUCO_MSGS::DUCOIOSTATES"))
(unless (find-package "DUCO_MSGS::DUCOIOSTATESREQUEST")
  (make-package "DUCO_MSGS::DUCOIOSTATESREQUEST"))
(unless (find-package "DUCO_MSGS::DUCOIOSTATESRESPONSE")
  (make-package "DUCO_MSGS::DUCOIOSTATESRESPONSE"))

(in-package "ROS")





(defclass duco_msgs::DucoIOStatesRequest
  :super ros::object
  :slots (_ioOper _type _port _value ))

(defmethod duco_msgs::DucoIOStatesRequest
  (:init
   (&key
    ((:ioOper __ioOper) 0)
    ((:type __type) 0)
    ((:port __port) 0)
    ((:value __value) nil)
    )
   (send-super :init)
   (setq _ioOper (round __ioOper))
   (setq _type (round __type))
   (setq _port (round __port))
   (setq _value __value)
   self)
  (:ioOper
   (&optional __ioOper)
   (if __ioOper (setq _ioOper __ioOper)) _ioOper)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:port
   (&optional __port)
   (if __port (setq _port __port)) _port)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int8 _ioOper
    1
    ;; int8 _type
    1
    ;; int8 _port
    1
    ;; bool _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _ioOper
       (write-byte _ioOper s)
     ;; int8 _type
       (write-byte _type s)
     ;; int8 _port
       (write-byte _port s)
     ;; bool _value
       (if _value (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _ioOper
     (setq _ioOper (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ioOper 127) (setq _ioOper (- _ioOper 256)))
   ;; int8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;; int8 _port
     (setq _port (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _port 127) (setq _port (- _port 256)))
   ;; bool _value
     (setq _value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass duco_msgs::DucoIOStatesResponse
  :super ros::object
  :slots (_result ))

(defmethod duco_msgs::DucoIOStatesResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass duco_msgs::DucoIOStates
  :super ros::object
  :slots ())

(setf (get duco_msgs::DucoIOStates :md5sum-) "d73a38548e6ecc94c1d3393d8cbc66ab")
(setf (get duco_msgs::DucoIOStates :datatype-) "duco_msgs/DucoIOStates")
(setf (get duco_msgs::DucoIOStates :request) duco_msgs::DucoIOStatesRequest)
(setf (get duco_msgs::DucoIOStates :response) duco_msgs::DucoIOStatesResponse)

(defmethod duco_msgs::DucoIOStatesRequest
  (:response () (instance duco_msgs::DucoIOStatesResponse :init)))

(setf (get duco_msgs::DucoIOStatesRequest :md5sum-) "d73a38548e6ecc94c1d3393d8cbc66ab")
(setf (get duco_msgs::DucoIOStatesRequest :datatype-) "duco_msgs/DucoIOStatesRequest")
(setf (get duco_msgs::DucoIOStatesRequest :definition-)
      "#IO 操作类型 Get Set
int8 ioOper
#IO 类型
int8 type  # 0:gen io  1:tool io
#IO 端口
int8 port  #GEN IO 0--16  TOOL IO 0--1
#SetIO 值
bool value
---
#获取操作结果
bool result


")

(setf (get duco_msgs::DucoIOStatesResponse :md5sum-) "d73a38548e6ecc94c1d3393d8cbc66ab")
(setf (get duco_msgs::DucoIOStatesResponse :datatype-) "duco_msgs/DucoIOStatesResponse")
(setf (get duco_msgs::DucoIOStatesResponse :definition-)
      "#IO 操作类型 Get Set
int8 ioOper
#IO 类型
int8 type  # 0:gen io  1:tool io
#IO 端口
int8 port  #GEN IO 0--16  TOOL IO 0--1
#SetIO 值
bool value
---
#获取操作结果
bool result


")



(provide :duco_msgs/DucoIOStates "d73a38548e6ecc94c1d3393d8cbc66ab")


