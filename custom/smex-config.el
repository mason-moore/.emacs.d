;; -*- lexical-binding: t; -*-

;;Supper Mata-x
(require 'smex)
    (smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

(provide 'smex-config)
