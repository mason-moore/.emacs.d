(if (not window-system)
    (menu-bar-mode -1))
(tool-bar-mode -1)
(setq inhibit-startup-screen t)
(line-number-mode 1)
(column-number-mode 1)
(global-hl-line-mode 1)
;;(ido-mode 1)
(set-frame-parameter nil 'alpha 93)
(set-frame-font "UbuntuMono Nerd Font Mono-18" nil t)
(defalias 'yes-or-no-p 'y-or-n-p)
;;
(global-set-key [remap goto-line] 'go-line-with-feedback)
(defun go-line-with-feedback ()
  "Show line numbers temporarily, while prompting for the line number input"
  (interactive)
  (unwind-protect
      (progn
	(display-line-numbers-mode 1)
	(goto-line (read-number "Goto line: ")))
    (display-line-numbers-mode 0)))

;; autocompletion pair mode
(electric-pair-mode 1)
(setq electric-pair-pairs
	  '(
		(?\" . ?\")
		(?\[ . ?\])
		(?\{ . ?\})
        (?\< . ?\>)))

;; nyancat
(require 'nyan-mode)
(nyan-mode)
(nyan-start-animation)
;;(nyan-stop-animation)
(nyan-toggle-wavy-trail)

(setq gc-cons-threshold 100000000)
(setq inhibit-startup-message t)

(defalias 'yes-or-no-p 'y-or-n-p)

;; show unncessary whitespace that can mess up your diff
(add-hook 'prog-mode-hook
          (lambda () (interactive)
            (setq show-trailing-whitespace 1)))

;; use space to indent by default
(setq-default indent-tabs-mode nil)

;; set appearance of a tab that is represented by 4 spaces
(setq-default tab-width 4)

;; Compilation
(global-set-key (kbd "<f5>") (lambda ()
                               (interactive)
                               (setq-local compilation-read-command nil)
                               (call-interactively 'compile)))

;; setup GDB
(setq
 ;; use gdb-many-windows by default
 gdb-many-windows t

 ;; Non-nil means display source file containing the main routine at startup
 gdb-show-main t
 )

;; company
(use-package company
  :init
  (global-company-mode 1)
  (delete 'company-semantic company-backends))
;; (define-key c-mode-map  [(control tab)] 'company-complete)
;; (define-key c++-mode-map  [(control tab)] 'company-complete)

;; Package: projejctile
(use-package projectile
  :init
  (projectile-global-mode)
  (setq projectile-enable-caching t))

;; Package zygospore
(use-package zygospore
  :bind (("C-x 1" . zygospore-toggle-delete-other-windows)
         ("RET" .   newline-and-indent)))

  ; automatically indent when press RET

;; activate whitespace-mode to view all whitespace characters
(global-set-key (kbd "C-c w") 'whitespace-mode)
(windmove-default-keybindings)

(provide 'general)
