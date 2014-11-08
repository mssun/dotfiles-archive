(require 'server)
(unless (server-running-p)
  (server-start))

(defalias 'yes-or-no-p 'y-or-n-p)

(setq inhibit-splash-screen t)
(setq inhibit-startup-echo-area-message t)
(setq inhibit-startup-message t)
(menu-bar-mode -1)

(setq initial-scratch-message nil)

(setq ring-bell-function 'ignore)

(blink-cursor-mode -1)
(setq mac-right-command-modifier 'meta)

(electric-indent-mode t)
(setq-default indent-tabs-mode nil)

;; store most files in the cache
(setq backup-directory-alist
      `((".*" . ,(concat dotemacs-cache-directory "backups")))
      auto-save-file-name-transforms
      `((".*" ,(concat dotemacs-cache-directory "backups") t))
      auto-save-list-file-prefix
      (concat dotemacs-cache-directory "auto-save-list/saves-"))


(provide 'init-core)
