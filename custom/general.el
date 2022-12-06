;; -*- lexical-binding: t; -*-

(setq inhibit-startup-screen t)
;; (menu-bar-mode 0)
(tool-bar-mode 0)
(line-number-mode 1)
(column-number-mode 1)
(global-hl-line-mode 1)
;; (read-only-mode 1)
(ido-mode 1)
(set-frame-parameter nil 'alpha 93)
(set-frame-font "UbuntuMono Nerd Font Mono-18" nil t)
;; space replace tabs, 
(indent-tabs-mode 1)
(setq-default tab-width 4)

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



;; (global-set-key "\C-w" 'clipboard-kill-region)
;; (global-set-key "\M-w" 'clipboard-kill-ring-save)
;; (global-set-key "\C-y" 'clipboard-yank)

;; nyancat
(require 'nyan-mode)
(nyan-mode)
(nyan-start-animation)
;;(nyan-stop-animation)
(nyan-toggle-wavy-trail)

(provide 'general)
