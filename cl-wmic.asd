(defsystem "cl-wmic"
    :class :package-inferred-system
    :version "0.1.0"
    :author "Akihide Nano"
    :license "BSD 2-Cause"
    :depends-on ()
    :components ((:module "src"
			  :serial t
			  :components
			  ((:file "package")
			   (:file "utils")
			   (:file "main"))))
    :description "Getting the wmic information"
    :in-order-to ((test-op (test-op "cl-wmic-test"))))
