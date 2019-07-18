(defpackage #:cl-wmic/computersystem
  (:use #:cl)
  (:export #:get-computersystem))
(in-package #:cl-wmic/computersystem)

(defun get-computersystem ()
  (with-output-to-string (s)
    (uiop:run-program `(,(uiop:native-namestring #P"C:/Windows/System32/wbem/WMIC.exe")
			 "computersystem"
			 "list"
			 "full")
		      :output s
		      :external-format :sjis
		      :error-output :interactive)))
		      
