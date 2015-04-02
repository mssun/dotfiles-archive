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
          "v" (kbd "C-w v C-w l")
          "s" (kbd "C-w s C-w j")
          "h h" 'help-for-help-internal
          "b d" 'kill-this-buffer))

    (global-set-key (kbd "C-w") 'evil-window-map)
    (define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
    (define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
    (define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
    (define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)
    (define-key evil-normal-state-map (kbd "C-b") 'evil-scroll-up)
    (define-key evil-normal-state-map (kbd "C-f") 'evil-scroll-down)

    (define-key evil-motion-state-map "j" 'evil-next-visual-line)
    (define-key evil-motion-state-map "k" 'evil-previous-visual-line)

    (define-key evil-normal-state-map (kbd "SPC o") 'imenu)
    (define-key evil-normal-state-map (kbd "SPC b") 'switch-to-buffer)
    (define-key evil-normal-state-map (kbd "SPC k") 'ido-kill-buffer)
    (define-key evil-normal-state-map (kbd "SPC f") 'ido-find-file)

    (after 'company
      (define-key company-active-map (kbd "C-n") 'company-select-next)
      (define-key company-active-map (kbd "C-p") 'company-select-previous)
      (define-key company-active-map (kbd "<tab>") 'my-company-tab)
      (define-key company-active-map (kbd "<backtab>") 'company-select-previous)
      (after "helm-company-autoloads"
        (define-key company-mode-map (kbd "<C-return>") 'helm-company)
        (define-key company-active-map (kbd "<C-return>") 'helm-company)))

    (after "helm-autoloads"
      (define-key evil-visual-state-map (kbd "SPC SPC") 'helm-M-x)
      (define-key evil-normal-state-map (kbd "SPC SPC") 'helm-M-x)
      (define-key evil-normal-state-map (kbd "SPC b") 'helm-mini)
      (define-key evil-normal-state-map (kbd "g b") 'helm-mini)
      (define-key evil-normal-state-map (kbd "SPC a") 'helm-apropos)
      (define-key evil-normal-state-map (kbd "SPC f") 'helm-find-files)
      (define-key evil-normal-state-map (kbd "SPC o") 'helm-semantic-or-imenu)
      (define-key evil-normal-state-map (kbd "SPC t") 'helm-etags-select)
      (define-key evil-normal-state-map (kbd "SPC y") 'helm-show-kill-ring)
      (define-key evil-normal-state-map (kbd "SPC m") 'helm-bookmarks)
      (define-key evil-normal-state-map (kbd "SPC r") 'helm-register)
      (after "helm-swoop-autoloads"
        (define-key evil-normal-state-map (kbd "SPC l") 'helm-swoop)
              (define-key evil-normal-state-map (kbd "SPC L") 'helm-multi-swoop)))

)
(provide 'init-bindings)
