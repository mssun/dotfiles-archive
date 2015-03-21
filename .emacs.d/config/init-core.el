(require 'server)
(unless (server-running-p)
  (server-start))

;; move cursor to the last position upon open
(require 'saveplace)
(setq save-place-file (concat dotemacs-cache-directory "places"))
(setq-default save-place t)


;; minibuffer history
(require 'savehist)
(setq savehist-file (concat dotemacs-cache-directory "savehist")
      savehist-additional-variables '(search ring regexp-search-ring)
      savehist-autosave-interval 60
      history-length 1000)
(savehist-mode t)

;; recent files
(require 'recentf)
(setq recentf-save-file (concat dotemacs-cache-directory "recentf"))
(setq recentf-max-saved-items 1000)
(setq recentf-max-menu-items 500)
(setq recentf-auto-cleanup 300)
(add-to-list 'recentf-exclude "COMMIT_EDITMSG\\'")
(recentf-mode t)
(run-with-timer 1800 1800 'recentf-save-list)

(defalias 'yes-or-no-p 'y-or-n-p)

(setq inhibit-splash-screen t)
(setq inhibit-startup-echo-area-message t)
(setq inhibit-startup-message t)

(setq initial-scratch-message nil)

(setq ring-bell-function 'ignore)

(blink-cursor-mode -1)
(setq mac-right-command-modifier 'meta)

(electric-indent-mode t)
(setq-default indent-tabs-mode nil)

;; better scrolling
(setq scroll-conservatively 9999
      scroll-preserve-screen-position t)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-follow-mouse 't)
(setq scroll-step 1)

;; store most files in the cache
(setq backup-directory-alist
      `((".*" . ,(concat dotemacs-cache-directory "backups")))
      auto-save-file-name-transforms
      `((".*" ,(concat dotemacs-cache-directory "backups") t))
      auto-save-list-file-prefix
      (concat dotemacs-cache-directory "auto-save-list/saves-"))

(defun my-do-not-kill-scratch-buffer()
  (if (member (buffer-name (current-buffer)) '("*scratch*" "*Messages*"))
      (progn
        (bury-buffer)
        nil)
    t))
(add-hook 'kill-buffer-query-functions 'my-do-not-kill-scratch-buffer)

(require-package 'dash)
(require-package 'dash-functional)

(provide 'init-core)
