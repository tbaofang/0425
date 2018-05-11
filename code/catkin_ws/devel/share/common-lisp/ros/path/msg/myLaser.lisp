; Auto-generated. Do not edit!


(cl:in-package path-msg)


;//! \htmlinclude myLaser.msg.html

(cl:defclass <myLaser> (roslisp-msg-protocol:ros-message)
  ((serial
    :reader serial
    :initarg :serial
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass myLaser (<myLaser>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <myLaser>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'myLaser)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name path-msg:<myLaser> is deprecated: use path-msg:myLaser instead.")))

(cl:ensure-generic-function 'serial-val :lambda-list '(m))
(cl:defmethod serial-val ((m <myLaser>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path-msg:serial-val is deprecated.  Use path-msg:serial instead.")
  (serial m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <myLaser>) ostream)
  "Serializes a message object of type '<myLaser>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'serial))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'serial))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <myLaser>) istream)
  "Deserializes a message object of type '<myLaser>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'serial) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'serial)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<myLaser>)))
  "Returns string type for a message object of type '<myLaser>"
  "path/myLaser")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'myLaser)))
  "Returns string type for a message object of type 'myLaser"
  "path/myLaser")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<myLaser>)))
  "Returns md5sum for a message object of type '<myLaser>"
  "d8b094b0dd476a7b3679b1db6012cbd9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'myLaser)))
  "Returns md5sum for a message object of type 'myLaser"
  "d8b094b0dd476a7b3679b1db6012cbd9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<myLaser>)))
  "Returns full string definition for message of type '<myLaser>"
  (cl:format cl:nil "float64[] serial ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'myLaser)))
  "Returns full string definition for message of type 'myLaser"
  (cl:format cl:nil "float64[] serial ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <myLaser>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'serial) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <myLaser>))
  "Converts a ROS message object to a list"
  (cl:list 'myLaser
    (cl:cons ':serial (serial msg))
))
