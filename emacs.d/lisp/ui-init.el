;; set init window size and font
(if (display-graphic-p)
    (progn
      (setq initial-frame-alist
            '(
              (tool-bar-lines . 0)
              (width . 81) ; chars
              (height . 32) ; lines
	      (right . 50)
	      (top . 30)
	      )) 
      (setq default-frame-alist
            '(
              (tool-bar-lines . 0)
              (width . 106)
              (height . 60)
	      (right . 50)
	      (top . 30)
	      )))
  (progn
    (setq initial-frame-alist '( (tool-bar-lines . 0)))
    (setq default-frame-alist '( (tool-bar-lines . 0)))))

;; ---------- font & size ----------
(when (member "Monaco" (font-family-list))
  (set-frame-font "Monaco-14" t t))
;; ---------- editor apearance ----------
(tool-bar-mode nil)
(menu-bar-mode nil)
(scroll-bar-mode nil)
(global-linum-mode t)
;; ---------- highlight paired bracket ----------
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
;; ---------- highlight current line ----------
(global-hl-line-mode t)
;; ---------- set theme ----------
;;(load-theme 'monokai t)

(provide 'ui-init)
