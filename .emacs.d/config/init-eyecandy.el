; (setq show-paren-delay 0)
(show-paren-mode t)

; (setq display-time-day-and-date t
;       display-time-24hr-format t
;       display-time-interval 10
;       display-time-default-load-average nil)
; (display-time-mode t)

(when (eq system-type 'darwin)
  (set-face-attribute 'default nil :family "Monaco")
  (set-face-attribute 'default nil :height 140)
)

(add-to-list 'default-frame-alist '(height . 24))
(add-to-list 'default-frame-alist '(width. 80))

(provide 'init-eyecandy)
