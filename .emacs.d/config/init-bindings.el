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
          "w" 'save-buffer
          "b d" 'kill-this-buffer))

    (global-set-key (kbd "C-w") 'evil-window-map)
    (define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
    (define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
    (define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
    (define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)
    (define-key evil-normal-state-map (kbd "C-b") 'evil-scroll-up)
    (define-key evil-normal-state-map (kbd "C-f") 'evil-scroll-down)

    (after "company-autoloads"
      (define-key company-active-map (kbd "C-n") 'company-select-next)
      (define-key company-active-map (kbd "C-p") 'company-select-previous)
      (after "helm-company-autoloads"
        (define-key company-mode-map (kbd "<C-return>") 'helm-company)
        (define-key company-active-map (kbd "<C-return>") 'helm-company)))

    
    (after "smex-autoloads"
      (define-key evil-visual-state-map (kbd "SPC SPC") 'smex)
      (define-key evil-normal-state-map (kbd "SPC SPC") 'smex))
  
    (define-key evil-normal-state-map (kbd "SPC o") 'imenu)
    (define-key evil-normal-state-map (kbd "SPC b") 'switch-to-buffer)
    (define-key evil-normal-state-map (kbd "SPC k") 'ido-kill-buffer)
    (define-key evil-normal-state-map (kbd "SPC f") 'ido-find-file)

    )

(provide 'init-bindings)
