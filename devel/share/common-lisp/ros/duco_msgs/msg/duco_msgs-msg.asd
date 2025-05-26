
(cl:in-package :asdf)

(defsystem "duco_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "DucoAnalog" :depends-on ("_package_DucoAnalog"))
    (:file "_package_DucoAnalog" :depends-on ("_package"))
    (:file "DucoDigital" :depends-on ("_package_DucoDigital"))
    (:file "_package_DucoDigital" :depends-on ("_package"))
    (:file "DucoIOState" :depends-on ("_package_DucoIOState"))
    (:file "_package_DucoIOState" :depends-on ("_package"))
    (:file "DucoRobotState" :depends-on ("_package_DucoRobotState"))
    (:file "_package_DucoRobotState" :depends-on ("_package"))
  ))