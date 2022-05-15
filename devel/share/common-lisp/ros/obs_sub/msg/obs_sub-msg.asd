
(cl:in-package :asdf)

(defsystem "obs_sub-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "obs_msg" :depends-on ("_package_obs_msg"))
    (:file "_package_obs_msg" :depends-on ("_package"))
  ))