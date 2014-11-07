(require-package 'projectile)

(setq projectile-cache-file (concat dotemacs-cache-directory "peojectile.cache"))
(setq projectile-known-projects-file (concat dotemacs-cache-directory "projectile-bookmarks.eld"))
(setq projectile-indexing-method 'alien)


(require 'projectile)


(add-to-list 'projectile-globally-ignored-directories "elpa")
(add-to-list 'projectile-globally-ignored-directories ".cache")
(add-to-list 'projectile-globally-ignored-directories "node_modules")
(projectile-global-mode t)

(provide 'init-projectile)
