; (setq show-paren-delay 0)
(show-paren-mode t)

; (setq display-time-day-and-date t
;       display-time-24hr-format t
;       display-time-interval 10
;       display-time-default-load-average nil)
; (display-time-mode t)

(if (eq system-type 'darwin)
  (progn 
    (set-face-attribute 'default nil 
                        :font "Source Code Pro-16")
  )
  (progn
    (set-face-attribute 'default nil :family "Ubuntu Mono" :height 140)
  )
)

(add-to-list 'default-frame-alist '(height . 30))
(add-to-list 'default-frame-alist '(width. 80))

(provide 'init-eyecandy)
