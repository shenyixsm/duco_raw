
(cl:in-package :asdf)

(defsystem "duco_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :duco_msgs-msg
)
  :components ((:file "_package")
    (:file "DucoCommand" :depends-on ("_package_DucoCommand"))
    (:file "_package_DucoCommand" :depends-on ("_package"))
    (:file "DucoGetFK" :depends-on ("_package_DucoGetFK"))
    (:file "_package_DucoGetFK" :depends-on ("_package"))
    (:file "DucoGetIK" :depends-on ("_package_DucoGetIK"))
    (:file "_package_DucoGetIK" :depends-on ("_package"))
    (:file "DucoIOStates" :depends-on ("_package_DucoIOStates"))
    (:file "_package_DucoIOStates" :depends-on ("_package"))
    (:file "DucoRobotStates" :depends-on ("_package_DucoRobotStates"))
    (:file "_package_DucoRobotStates" :depends-on ("_package"))
  ))