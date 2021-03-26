 (when (>= emacs-major-version 24)
     (require 'package)
     (package-initialize)
     (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
		      ("melpa" . "http://elpa.emacs-china.org/melpa/"))))

;; 注意 elpa.emacs-china.org 是 Emacs China 中文社区在国内搭建的一个 ELPA 镜像

 ;; cl - Common Lisp Extension
 (require 'cl)

 ;; Add Packages
 (defvar my/packages '(
		;; --- Auto-completion ---
                company
		;; set monokai theme
		monokai-theme
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


;;关闭工具栏
(tool-bar-mode -1)

;;关闭文件滑动控件
(scroll-bar-mode -1)

;;显示行号
(global-linum-mode 1)

;;关闭缩进
;;(electric-indent-mode -1)
	
;;更改显示字体大小
;;(set-default-fontset "Consolas 14")

;;快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "c:/Users/zengs/.emacs.d/init.el"))
;;将函数open-init-file 绑定到<f2>键上
(global-set-key (kbd "<f2>") 'open-init-file)

;;开启全局Company补全
(global-company-mode 1)

;;不自动生成备份文件(
(setq make-backup-files nil)

;;使用快捷键用来加载最近打开过的文件
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)
;;绑定快捷键显示最近打开过的文件
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

;;选中文字之后,输入字符会替换掉选中的文字
(delete-selection-mode 1)

;;设置默认开启全屏
;;(setq initial-frame-alist (quote ((fullscreen . maximized))))

;;自动括号匹配
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;;minibuffer根据输入命令的长度自动调整大小
(setq resize-mini-windows t)

;;使用补全命令在候选项中遍历(只有不超过五个候选项的时候才使用补全命令遍历)
(setq completion-cycle-threshold t)

;;历史命令去重
(setq history-delete-duplicates t)

;;使用文件名自动补全的时候,忽略大小写
(setq read-file-name-completion-ignore-case t)

;;高亮当前行
(global-hl-line-mode 1)

;;使用C-n和C-p跳转的时候,以逻辑行为单位跳转而不是视觉行
(setq line-move-visual nil)

;;使用C-n和C-p如果光标在末尾,同样会跳到下一行的末尾
(setq track-eol 1)

;;使用C-n跳转到最后一行之后,继续按键会新建一行
(setq next-line-add-newlines 1)

;;使用monokai配色
(load-theme 'monokai t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Consolas" :foundry "outline" :slant normal :weight normal :height 120 :width normal)))))
