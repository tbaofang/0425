;; Auto-generated. Do not edit!


(when (boundp 'path::myLaser)
  (if (not (find-package "PATH"))
    (make-package "PATH"))
  (shadow 'myLaser (find-package "PATH")))
(unless (find-package "PATH::MYLASER")
  (make-package "PATH::MYLASER"))

(in-package "ROS")
;;//! \htmlinclude myLaser.msg.html


(defclass path::myLaser
  :super ros::object
  :slots (_serial ))

(defmethod path::myLaser
  (:init
   (&key
    ((:serial __serial) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _serial __serial)
   self)
  (:serial
   (&optional __serial)
   (if __serial (setq _serial __serial)) _serial)
  (:serialization-length
   ()
   (+
    ;; float64[] _serial
    (* 8    (length _serial)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _serial
     (write-long (length _serial) s)
     (dotimes (i (length _serial))
       (sys::poke (elt _serial i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _serial
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _serial (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _serial i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get path::myLaser :md5sum-) "d8b094b0dd476a7b3679b1db6012cbd9")
(setf (get path::myLaser :datatype-) "path/myLaser")
(setf (get path::myLaser :definition-)
      "float64[] serial 

")



(provide :path/myLaser "d8b094b0dd476a7b3679b1db6012cbd9")


