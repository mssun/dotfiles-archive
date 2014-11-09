(after "smex-autoloads"
  (global-set-key (kbd "M-x") 'smex)
  (global-set-key (kbd "C-x C-m") 'smex)
  (global-set-key (kbd "C-c C-m") 'smex))

(after 'evil
    ;; fix conflict with electric-indent-mode in 24.4
  (define-key evil-insert-state-map [remap newline] 'newline)
  (define-key evil-insert-state-map [remap newline-and-indent] 'newline-and-indent)
    (after "evil-leader-autoloads"
	(evil-leader/set-leader ",")
	(evil-leader/set-key
	  "e" 'find-file
	  "b" 'switch-to-buffer
	  "k" 'kill-buffer
	  "w" 'save-buffer))
    (after "company-autoloads"
      (define-key company-active-map (kbd "C-n") 'company-select-next)
      (define-key company-active-map (kbd "C-p") 'company-select-previous))

    (global-set-key (kbd "C-w") 'evil-window-map)
    (define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
    (define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
    (define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
    (define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)
    (define-key evil-normal-state-map (kbd "C-b") 'evil-scroll-up)
    (define-key evil-normal-state-map (kbd "C-f") 'evil-scroll-down)
    )

(provide 'init-bindings)
