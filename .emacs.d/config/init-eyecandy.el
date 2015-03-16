; (setq show-paren-delay 0)
(show-paren-mode t)

(line-number-mode t)
(column-number-mode t)

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

(if (eq system-type 'darwin)
  (progn 
    (set-face-attribute 'default nil 
                        :font "Source Code Pro-14")
  )
  (progn
    (set-face-attribute 'default nil :family "Source Code Pro" :height 120)
  )
)

(add-to-list 'default-frame-alist '(height . 30))
(add-to-list 'default-frame-alist '(width. 80))

(require-package 'rainbow-delimiters)

(provide 'init-eyecandy)
