; Auto-generated. Do not edit!


(cl:in-package button_msgs-msg)


;//! \htmlinclude button.msg.html

(cl:defclass <button> (roslisp-msg-protocol:ros-message)
  ((rev
    :reader rev
    :initarg :rev
    :type cl:fixnum
    :initform 0)
   (rev1
    :reader rev1
    :initarg :rev1
    :type cl:fixnum
    :initform 0)
   (rev2
    :reader rev2
    :initarg :rev2
    :type cl:fixnum
    :initform 0)
   (rev3
    :reader rev3
    :initarg :rev3
    :type cl:fixnum
    :initform 0))
)

(cl:defclass button (<button>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <button>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'button)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name button_msgs-msg:<button> is deprecated: use button_msgs-msg:button instead.")))

(cl:ensure-generic-function 'rev-val :lambda-list '(m))
(cl:defmethod rev-val ((m <button>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader button_msgs-msg:rev-val is deprecated.  Use button_msgs-msg:rev instead.")
  (rev m))

(cl:ensure-generic-function 'rev1-val :lambda-list '(m))
(cl:defmethod rev1-val ((m <button>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader button_msgs-msg:rev1-val is deprecated.  Use button_msgs-msg:rev1 instead.")
  (rev1 m))

(cl:ensure-generic-function 'rev2-val :lambda-list '(m))
(cl:defmethod rev2-val ((m <button>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader button_msgs-msg:rev2-val is deprecated.  Use button_msgs-msg:rev2 instead.")
  (rev2 m))

(cl:ensure-generic-function 'rev3-val :lambda-list '(m))
(cl:defmethod rev3-val ((m <button>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader button_msgs-msg:rev3-val is deprecated.  Use button_msgs-msg:rev3 instead.")
  (rev3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <button>) ostream)
  "Serializes a message object of type '<button>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rev)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rev1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rev2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rev3)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <button>) istream)
  "Deserializes a message object of type '<button>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rev)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rev1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rev2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rev3)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<button>)))
  "Returns string type for a message object of type '<button>"
  "button_msgs/button")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'button)))
  "Returns string type for a message object of type 'button"
  "button_msgs/button")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<button>)))
  "Returns md5sum for a message object of type '<button>"
  "795f3e8875dcd732f3ceab1c4c1df2c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'button)))
  "Returns md5sum for a message object of type 'button"
  "795f3e8875dcd732f3ceab1c4c1df2c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<button>)))
  "Returns full string definition for message of type '<button>"
  (cl:format cl:nil "uint8 rev~%uint8 rev1~%uint8 rev2~%uint8 rev3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'button)))
  "Returns full string definition for message of type 'button"
  (cl:format cl:nil "uint8 rev~%uint8 rev1~%uint8 rev2~%uint8 rev3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <button>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <button>))
  "Converts a ROS message object to a list"
  (cl:list 'button
    (cl:cons ':rev (rev msg))
    (cl:cons ':rev1 (rev1 msg))
    (cl:cons ':rev2 (rev2 msg))
    (cl:cons ':rev3 (rev3 msg))
))
