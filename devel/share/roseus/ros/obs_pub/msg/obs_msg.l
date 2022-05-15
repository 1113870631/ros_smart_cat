;; Auto-generated. Do not edit!


(when (boundp 'obs_pub::obs_msg)
  (if (not (find-package "OBS_PUB"))
    (make-package "OBS_PUB"))
  (shadow 'obs_msg (find-package "OBS_PUB")))
(unless (find-package "OBS_PUB::OBS_MSG")
  (make-package "OBS_PUB::OBS_MSG"))

(in-package "ROS")
;;//! \htmlinclude obs_msg.msg.html


(defclass obs_pub::obs_msg
  :super ros::object
  :slots (_x1 _y1 _x2 _y2 _dis _pos ))

(defmethod obs_pub::obs_msg
  (:init
   (&key
    ((:x1 __x1) 0)
    ((:y1 __y1) 0)
    ((:x2 __x2) 0)
    ((:y2 __y2) 0)
    ((:dis __dis) 0)
    ((:pos __pos) 0)
    )
   (send-super :init)
   (setq _x1 (round __x1))
   (setq _y1 (round __y1))
   (setq _x2 (round __x2))
   (setq _y2 (round __y2))
   (setq _dis (round __dis))
   (setq _pos (round __pos))
   self)
  (:x1
   (&optional __x1)
   (if __x1 (setq _x1 __x1)) _x1)
  (:y1
   (&optional __y1)
   (if __y1 (setq _y1 __y1)) _y1)
  (:x2
   (&optional __x2)
   (if __x2 (setq _x2 __x2)) _x2)
  (:y2
   (&optional __y2)
   (if __y2 (setq _y2 __y2)) _y2)
  (:dis
   (&optional __dis)
   (if __dis (setq _dis __dis)) _dis)
  (:pos
   (&optional __pos)
   (if __pos (setq _pos __pos)) _pos)
  (:serialization-length
   ()
   (+
    ;; int32 _x1
    4
    ;; int32 _y1
    4
    ;; int32 _x2
    4
    ;; int32 _y2
    4
    ;; int32 _dis
    4
    ;; int32 _pos
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _x1
       (write-long _x1 s)
     ;; int32 _y1
       (write-long _y1 s)
     ;; int32 _x2
       (write-long _x2 s)
     ;; int32 _y2
       (write-long _y2 s)
     ;; int32 _dis
       (write-long _dis s)
     ;; int32 _pos
       (write-long _pos s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _x1
     (setq _x1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y1
     (setq _y1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _x2
     (setq _x2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y2
     (setq _y2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _dis
     (setq _dis (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _pos
     (setq _pos (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get obs_pub::obs_msg :md5sum-) "3d164f9c8582b11fd9a4b6bc2d296d1b")
(setf (get obs_pub::obs_msg :datatype-) "obs_pub/obs_msg")
(setf (get obs_pub::obs_msg :definition-)
      "int32 x1
int32 y1
int32 x2
int32 y2
int32 dis
int32 pos
")



(provide :obs_pub/obs_msg "3d164f9c8582b11fd9a4b6bc2d296d1b")


