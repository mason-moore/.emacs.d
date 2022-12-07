;; -*- lexical-binding: t; -*-
;;(global-set-key (kbd "C-:") 'avy-goto-char)
(global-set-key (kbd "C-'") 'avy-goto-char-2)
(global-set-key (kbd "M-g l") 'avy-goto-line)
;; (global-set-key (kbd "M-g e") 'avy-goto-word-0)
(global-set-key (kbd "M-g w") 'avy-goto-word-1)
(avy-setup-default)
(global-set-key (kbd "C-c C-j") 'avy-resume)


(provide 'avy-config)
