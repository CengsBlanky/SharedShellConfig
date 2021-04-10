;; set init window size 
(if (display-graphic-p)
    (progn
	(setq default-frame-alist
            '(
		(tool-bar-lines . 0)
		(width . 80) ; chars
		(height . 36) ; lines
		(left . 500)
		(top . 30)
	    )
	) 
    )
)

;; ---------- font & size ----------
(when (member "Monaco" (font-family-list))
  (set-frame-font "Monaco-14" t t))
;; ---------- editor apearance ----------
(menu-bar-mode nil)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(global-linum-mode t)
;; ---------- highlight paired bracket ----------
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
;; ---------- highlight current line ----------
(global-hl-line-mode t)
;; ---------- set theme ----------
;;(load-theme 'monokai t)

(provide 'ui-init)
