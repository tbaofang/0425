
(cl:in-package :asdf)

(defsystem "path-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "myLaser" :depends-on ("_package_myLaser"))
    (:file "_package_myLaser" :depends-on ("_package"))
    (:file "serial" :depends-on ("_package_serial"))
    (:file "_package_serial" :depends-on ("_package"))
  ))