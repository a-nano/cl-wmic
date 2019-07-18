(defsystem "cl-wmic"
    :class :package-inferred-system
    :version "0.1.0"
    :author "Akihide Nano"
    :license "BSD 2-Cause"
    :pathname "src"
    :depends-on ("cl-wmic/main")
    :description "Getting the wmic information"
    :in-order-to ((test-op (test-op "cl-wmic/tests"))))

(defsystem "cl-wmic/tests"
  :pathname "tests"
  :depends-on ("cl-wmic"
	       "prove")
  :components
  ((:file "main")))
