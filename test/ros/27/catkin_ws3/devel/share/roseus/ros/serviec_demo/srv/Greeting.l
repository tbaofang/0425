;; Auto-generated. Do not edit!


(when (boundp 'serviec_demo::Greeting)
  (if (not (find-package "SERVIEC_DEMO"))
    (make-package "SERVIEC_DEMO"))
  (shadow 'Greeting (find-package "SERVIEC_DEMO")))
(unless (find-package "SERVIEC_DEMO::GREETING")
  (make-package "SERVIEC_DEMO::GREETING"))
(unless (find-package "SERVIEC_DEMO::GREETINGREQUEST")
  (make-package "SERVIEC_DEMO::GREETINGREQUEST"))
(unless (find-package "SERVIEC_DEMO::GREETINGRESPONSE")
  (make-package "SERVIEC_DEMO::GREETINGRESPONSE"))

(in-package "ROS")





(defclass serviec_demo::GreetingRequest
  :super ros::object
  :slots (_name _age ))

(defmethod serviec_demo::GreetingRequest
  (:init
   (&key
    ((:name __name) "")
    ((:age __age) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _age (round __age))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; int32 _age
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int32 _age
       (write-long _age s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _age
     (setq _age (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass serviec_demo::GreetingResponse
  :super ros::object
  :slots (_feedback ))

(defmethod serviec_demo::GreetingResponse
  (:init
   (&key
    ((:feedback __feedback) "")
    )
   (send-super :init)
   (setq _feedback (string __feedback))
   self)
  (:feedback
   (&optional __feedback)
   (if __feedback (setq _feedback __feedback)) _feedback)
  (:serialization-length
   ()
   (+
    ;; string _feedback
    4 (length _feedback)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _feedback
       (write-long (length _feedback) s) (princ _feedback s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _feedback
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _feedback (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass serviec_demo::Greeting
  :super ros::object
  :slots ())

(setf (get serviec_demo::Greeting :md5sum-) "116e2074a4605229af423317e5dff099")
(setf (get serviec_demo::Greeting :datatype-) "serviec_demo/Greeting")
(setf (get serviec_demo::Greeting :request) serviec_demo::GreetingRequest)
(setf (get serviec_demo::Greeting :response) serviec_demo::GreetingResponse)

(defmethod serviec_demo::GreetingRequest
  (:response () (instance serviec_demo::GreetingResponse :init)))

(setf (get serviec_demo::GreetingRequest :md5sum-) "116e2074a4605229af423317e5dff099")
(setf (get serviec_demo::GreetingRequest :datatype-) "serviec_demo/GreetingRequest")
(setf (get serviec_demo::GreetingRequest :definition-)
      "string name
int32 age
---
string feedback

")

(setf (get serviec_demo::GreetingResponse :md5sum-) "116e2074a4605229af423317e5dff099")
(setf (get serviec_demo::GreetingResponse :datatype-) "serviec_demo/GreetingResponse")
(setf (get serviec_demo::GreetingResponse :definition-)
      "string name
int32 age
---
string feedback

")



(provide :serviec_demo/Greeting "116e2074a4605229af423317e5dff099")


