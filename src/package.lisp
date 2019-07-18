(in-package :common-lisp)

(defpackage #:cl-wmic
  #+(or win32 windows)
  (:import-from #:cl-wmic.computersystem
		#:get-computersystem))

#-(or win32 windows)
(error "Unsupported operationg system.")
