(defgroup dotemacs nil
  "Custom configuration for dotemacs."
  :group 'local)

(defcustom dotemacs-cache-directory (concat user-emacs-directory ".cache/")
  "The storage location for various persistent files."
  :group 'dotemacs)

(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(unless (display-graphic-p) (menu-bar-mode -1))

(add-to-list 'load-path (concat user-emacs-directory "config"))
(add-to-list 'load-path (concat user-emacs-directory "elisp"))

(require 'cl)
(require 'init-packages)
(require 'init-util)

(defcustom dotemacs-modules
  '(init-core
    init-exec-path
    init-theme
    init-eyecandy
    init-evil
    init-org
    init-auctex
    init-yasnippet
    init-ido
    init-helm
    init-org
    init-company
    ;; init-autopair
    init-smartparens
    init-markdown
    init-c
    init-elpy
    init-projectile
    ;; init-mu4e
    init-flycheck
    init-bindings
    init-calfw
    init-misc
    )
  "Set of modules enable in dotemacs."
  :group 'dotemacs)

(dolist (module dotemacs-modules)
  (require module))
