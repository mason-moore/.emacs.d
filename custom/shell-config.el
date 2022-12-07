;; -*- lexical-binding: t; -*-

(global-set-key "\C-cc" 'shell-command)

;; (setenv "SHELL" "/bin/btcsh")
;; (setq explicit-shell-file-name "/bin/tcsh")
;; (setq shell-file-name "tcsh")
;; (defun csh-shell-mode-setup ()
;;   (setq-local comint-process-echoes t))

;; (add-hook 'shell-mode-hook #'csh-shell-mode-setup)
;; (defun change-shell-mode-coding ()
;;   (progn
;;     (set-terminal-coding-system 'utf-8)
;;     (set-keyboard-coding-system 'utf-8)
;;     (set-selection-coding-system 'utf-8)
;;     (set-buffer-file-coding-system 'utf-8)
;;     (set-file-name-coding-system 'utf-8)
;;     (modify-coding-system-alist 'process "*" 'utf-8)
;;     (set-buffer-process-coding-system 'utf-8 'utf-8)
;;     (set-file-name-coding-system 'utf-8)))
;; (add-hook 'shell-mode-hook 'change-shell-mode-coding)
;; (autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
;; (add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(message "This is setup-shell.el file")

(provide 'shell-config)
