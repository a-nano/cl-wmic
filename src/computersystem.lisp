(defpackage #:cl-wmic/computersystem
  (:use #:cl)
  (:export #:computersystem))
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

(defun split (x str)
  (let ((pos (position x str)))
    (if pos
	(cons (subseq str 0 pos)
	      (split x (subseq str (1+ pos))))
	(list str))))

(defun computersystem ()
  (mapcar #'(lambda (x) (split #\= x))
	  (remove ""
		  (split #\newline
			 (remove #\return
				 (get-computersystem)))
		  :test #'string=)))
