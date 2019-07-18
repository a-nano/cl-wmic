(defsystem "cl-wmic-test"
  :defsystem-depends-on ("prove-asdf")
  :author "Akihide Nano"
  :license "LLGPL"
  :depends-on ("cl-wmic"
	       "prove")
  :components ((:module "tests"
			:serial t
			:components
			((:test-file "main"))))
  :description "Test sytem for cl-wmic"
  :perform (test-op (op c) (symbol-call :prove-asdf :run-test-sytem c)))
