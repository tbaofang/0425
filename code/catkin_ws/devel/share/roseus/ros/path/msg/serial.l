;; Auto-generated. Do not edit!


(when (boundp 'path::serial)
  (if (not (find-package "PATH"))
    (make-package "PATH"))
  (shadow 'serial (find-package "PATH")))
(unless (find-package "PATH::SERIAL")
  (make-package "PATH::SERIAL"))

(in-package "ROS")
;;//! \htmlinclude serial.msg.html


(defclass path::serial
  :super ros::object
  :slots (_vk _wk ))

(defmethod path::serial
  (:init
   (&key
    ((:vk __vk) 0.0)
    ((:wk __wk) 0.0)
    )
   (send-super :init)
   (setq _vk (float __vk))
   (setq _wk (float __wk))
   self)
  (:vk
   (&optional __vk)
   (if __vk (setq _vk __vk)) _vk)
  (:wk
   (&optional __wk)
   (if __wk (setq _wk __wk)) _wk)
  (:serialization-length
   ()
   (+
    ;; float32 _vk
    4
    ;; float32 _wk
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _vk
       (sys::poke _vk (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wk
       (sys::poke _wk (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _vk
     (setq _vk (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wk
     (setq _wk (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get path::serial :md5sum-) "b1d934fb5105682f89baa76d53ad978a")
(setf (get path::serial :datatype-) "path/serial")
(setf (get path::serial :definition-)
      "float32 vk
float32 wk

")



(provide :path/serial "b1d934fb5105682f89baa76d53ad978a")


