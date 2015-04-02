; (setq evil-want-C-u-scroll t)
(setq evil-search-module 'evil-search)
(setq evil-magic 'very-magic)

(require-package 'evil)
(require 'evil)

(unless (display-graphic-p)
  (evil-esc-mode))

(setq evil-cross-lines t)

(require-package 'evil-leader)
(global-evil-leader-mode t)

(require-package 'evil-matchit)
(global-evil-matchit-mode t)

(setq evilnc-hotkey-comment-operator "gc")
(require-package 'evil-nerd-commenter)
(require 'evil-nerd-commenter)

(require-package 'evil-surround)
(global-evil-surround-mode t)

(require-package 'evil-visualstar)
(global-evil-visualstar-mode t)

(evil-mode t)

(provide 'init-evil)
