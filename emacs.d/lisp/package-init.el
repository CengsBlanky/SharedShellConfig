(setq byte-compile-warnings '(cl-functions))
(require 'cl)
(package-initialize)
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)


 ;; package list
 (defvar my/packages '(
		company
		slime
		smartparens
		;; vim-like mode
		evil
		;; remap key in evil mode
		key-chord
		;; org mode
		org
		) "Default packages")

(setq package-selected-packages my/packages)

(defun my/packages-installed-p ()
    (loop for pkg in my/packages
	  when (not (package-installed-p pkg)) do (return nil)
	  finally (return t)))

(unless (my/packages-installed-p)
    (message "%s" "Refreshing package database...")
    (package-refresh-contents)
    (dolist (pkg my/packages)
      (when (not (package-installed-p pkg))
	(package-install pkg))))

;; enable installed packages
;; ============================================================================
;; ---------- enable autocomplete ----------
(global-company-mode t)
;; ---------- enable evil ----------
(require 'evil)
(evil-mode t)
;; ---------- enable key-chord ----------
(require 'key-chord)
(key-chord-mode t)
(key-chord-define evil-insert-state-map "jk" 'evil-normal-state)

(provide 'package-init)
