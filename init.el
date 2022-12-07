;; -*- lexical-binding: t; -*-
(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'load-path "~/.emacs.d/custom")
(package-initialize)

(when (not package-archive-contents)
     (package-refresh-contents))
(unless (package-installed-p 'use-package)
     (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

;; ;; (setq backup-directory-alist '("." . "~/.emacs.d/emacs_backup"))

;; ;; (require 'language-environment)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(misterioso))
 '(package-selected-packages '(avy undo-tree use-package smex nyan-mode company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-scrollbar-bg ((t (:background "#41bf505b61e3"))))
 '(company-scrollbar-fg ((t (:background "#377643c95293"))))
 '(company-tooltip ((t (:inherit default :background "#314a3c3e4963"))))
 '(company-tooltip-common ((t (:inherit font-lock-constant-face))))
 '(company-tooltip-selection ((t (:inherit font-lock-function-name-face)))))

(require 'general)
(require 'company-config)
(require 'smex-config)
(require 'undo-tree-config)
(require 'avy-config)
(require 'shell-config)
