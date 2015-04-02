(require-package 'undo-tree)
(setq undo-tree-auto-save-history t)
(setq undo-tree-history-directory-alist
      `(("." . ,(concat dotemacs-cache-directory "undo"))))
(setq undo-tree-visualizer-timestamps t)
(setq undo-tree-visualizer-diff t)
(global-undo-tree-mode)

(require-package 'twittering-mode)
(require-package 'hackernews)
(require-package 'ace-jump-mode)

(require-package 'multiple-cursors)
(after 'evil
  (add-hook 'multiple-cursors-mode-enabled-hook #'evil-emacs-state)
  (add-hook 'multiple-cursors-mode-disabled-hook #'evil-normal-state))

(require-package 'aggressive-indent)
(require 'aggressive-indent)
(add-to-list 'aggressive-indent-excluded-modes #'stylus-mode)
(add-to-list 'aggressive-indent-excluded-modes #'org-mode)
(add-to-list 'aggressive-indent-excluded-modes #'vimrc-mode)
(global-aggressive-indent-mode)

(require-package 'paradox)
(setq paradox-execute-asynchronously nil)

(provide 'init-misc)
