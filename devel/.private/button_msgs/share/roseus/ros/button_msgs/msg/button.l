;; Auto-generated. Do not edit!


(when (boundp 'button_msgs::button)
  (if (not (find-package "BUTTON_MSGS"))
    (make-package "BUTTON_MSGS"))
  (shadow 'button (find-package "BUTTON_MSGS")))
(unless (find-package "BUTTON_MSGS::BUTTON")
  (make-package "BUTTON_MSGS::BUTTON"))

(in-package "ROS")
;;//! \htmlinclude button.msg.html


(defclass button_msgs::button
  :super ros::object
  :slots (_rev _rev1 _rev2 _rev3 ))

(defmethod button_msgs::button
  (:init
   (&key
    ((:rev __rev) 0)
    ((:rev1 __rev1) 0)
    ((:rev2 __rev2) 0)
    ((:rev3 __rev3) 0)
    )
   (send-super :init)
   (setq _rev (round __rev))
   (setq _rev1 (round __rev1))
   (setq _rev2 (round __rev2))
   (setq _rev3 (round __rev3))
   self)
  (:rev
   (&optional __rev)
   (if __rev (setq _rev __rev)) _rev)
  (:rev1
   (&optional __rev1)
   (if __rev1 (setq _rev1 __rev1)) _rev1)
  (:rev2
   (&optional __rev2)
   (if __rev2 (setq _rev2 __rev2)) _rev2)
  (:rev3
   (&optional __rev3)
   (if __rev3 (setq _rev3 __rev3)) _rev3)
  (:serialization-length
   ()
   (+
    ;; uint8 _rev
    1
    ;; uint8 _rev1
    1
    ;; uint8 _rev2
    1
    ;; uint8 _rev3
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _rev
       (write-byte _rev s)
     ;; uint8 _rev1
       (write-byte _rev1 s)
     ;; uint8 _rev2
       (write-byte _rev2 s)
     ;; uint8 _rev3
       (write-byte _rev3 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _rev
     (setq _rev (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _rev1
     (setq _rev1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _rev2
     (setq _rev2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _rev3
     (setq _rev3 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get button_msgs::button :md5sum-) "795f3e8875dcd732f3ceab1c4c1df2c6")
(setf (get button_msgs::button :datatype-) "button_msgs/button")
(setf (get button_msgs::button :definition-)
      "uint8 rev
uint8 rev1
uint8 rev2
uint8 rev3

")



(provide :button_msgs/button "795f3e8875dcd732f3ceab1c4c1df2c6")


