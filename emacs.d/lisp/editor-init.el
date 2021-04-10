;; ---------- diable generate backup file ----------
(setq make-backup-files nil)
;; ---------- disable session files ----------
(setq auto-save-list-file-prefix nil)
;; ---------- when mark region exists, type will replace it ----------
(delete-selection-mode t)
;; ---------- enable scroll left ----------
(put 'scroll-left 'disabled nil)

(provide 'editor-init)
