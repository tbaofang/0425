; Auto-generated. Do not edit!


(cl:in-package msgs_demo-msg)


;//! \htmlinclude AddTwoIntsFeedback.msg.html

(cl:defclass <AddTwoIntsFeedback> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass AddTwoIntsFeedback (<AddTwoIntsFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddTwoIntsFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddTwoIntsFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgs_demo-msg:<AddTwoIntsFeedback> is deprecated: use msgs_demo-msg:AddTwoIntsFeedback instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddTwoIntsFeedback>) ostream)
  "Serializes a message object of type '<AddTwoIntsFeedback>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddTwoIntsFeedback>) istream)
  "Deserializes a message object of type '<AddTwoIntsFeedback>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddTwoIntsFeedback>)))
  "Returns string type for a message object of type '<AddTwoIntsFeedback>"
  "msgs_demo/AddTwoIntsFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddTwoIntsFeedback)))
  "Returns string type for a message object of type 'AddTwoIntsFeedback"
  "msgs_demo/AddTwoIntsFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddTwoIntsFeedback>)))
  "Returns md5sum for a message object of type '<AddTwoIntsFeedback>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddTwoIntsFeedback)))
  "Returns md5sum for a message object of type 'AddTwoIntsFeedback"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddTwoIntsFeedback>)))
  "Returns full string definition for message of type '<AddTwoIntsFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddTwoIntsFeedback)))
  "Returns full string definition for message of type 'AddTwoIntsFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddTwoIntsFeedback>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddTwoIntsFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'AddTwoIntsFeedback
))