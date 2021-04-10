;; ---------- use command key as meta key in mac ----------
(when (eq system-type 'darwin)
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier 'alt)
  )
;; ---------- set <F2> as quick key to open my init file ----------
(defun open-my-init-file ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f2>") 'open-my-init-file)
;; ---------- go begining of the brace or end of brace ----------
(global-set-key [(meta left)] 'backward-sexp)
(global-set-key [(meta right)] 'forward-sexp)
;; ---------- M-g to go specfic line ----------
(global-set-key [(meta g)] 'goto-line)

(provide 'keybinding-init)
