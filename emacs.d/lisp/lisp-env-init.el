;; ---------- Common Lisp Extension ----------
(require 'cl)
;; ---------- use sbcl to compile lisp ----------
(load (expand-file-name "~/quicklisp/slime-helper.el"))
(setq inferior-lisp-program "/usr/local/bin/sbcl")

(provide 'lisp-env-init)
