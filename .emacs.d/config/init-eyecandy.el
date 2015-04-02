(show-paren-mode t)
(setq show-paren-delay 0)

(line-number-mode t)
(column-number-mode t)
(display-time-mode t)
(size-indication-mode t)

;; (require-package 'diminish)
;; (diminish 'visual-line-mode)
;; (after 'undo-tree (diminish 'undo-tree-mode))
;; (after 'projectile (diminish 'projectile-mode))
;; (after 'yasnippet (diminish 'yas-minor-mode))
;; (after 'smartparens (diminish 'smartparens-mode))

(require-package 'rich-minority)
(require 'rich-minority)
(add-to-list 'rm-whitelist nil t)
(rich-minority-mode 1)

(require-package 'smart-mode-line)
(setq sml/show-client t)
(setq sml/show-eol t)
(setq sml/show-frame-identification t)
(setq sml/no-confirm-load-theme t)
(setq sml/shorten-directory t)
(setq sml/shorten-modes t)
(sml/setup)
(sml/apply-theme 'respectful)

; (setq display-time-day-and-date t
;       display-time-24hr-format t
;       display-time-interval 10
;       display-time-default-load-average nil)
; (display-time-mode t)

(set-default-font "Source Code Pro-11")

;;(if (eq system-type 'darwin)
;;  (progn 
;;    (set-face-attribute 'default nil :font "Source Code Pro-14")
;;  )
;;  (progn
;;    (set-face-attribute 'default nil :font "Source Code Pro-11")
;;  )
;;)

(add-to-list 'default-frame-alist '(height . 30))
(add-to-list 'default-frame-alist '(width. 80))

(require-package 'rainbow-delimiters)

(require-package 'color-identifiers-mode)
(global-color-identifiers-mode)

(require-package 'highlight-symbol)
(setq highlight-symbol-idle-delay 0.3)
(add-hook 'prog-mode-hook 'highlight-symbol-mode)

(require-package 'highlight-numbers)
(add-hook 'prog-mode-hook 'highlight-numbers-mode)

(require-package 'highlight-quoted)
(add-hook 'prog-mode-hook 'highlight-quoted-mode)
(add-hook 'find-file-hook 'hl-line-mode)
(provide 'init-eyecandy)
