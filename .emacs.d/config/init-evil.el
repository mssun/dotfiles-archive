(setq evil-want-C-u-scroll t)
(setq evil-search-module 'evil-search)
(setq evil-magic 'very-magic)

(require-package 'evil)
(require 'evil)

(require-package 'evil-leader)
(global-evil-leader-mode t)

(setq evilnc-hotkey-comment-operator "gc")
(require-package 'evil-nerd-commenter)
(require 'evil-nerd-commenter)

(evil-mode t)
(provide 'init-evil)
