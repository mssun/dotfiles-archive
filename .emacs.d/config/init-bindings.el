(after "smex-autoloads"
  (global-set-key (kbd "M-x") 'smex)
  (global-set-key (kbd "C-x C-m") 'smex)
  (global-set-key (kbd "C-c C-m") 'smex))

(after 'evil
    ;; fix conflict with electric-indent-mode in 24.4
  (define-key evil-insert-state-map [remap newline] 'newline)
  (define-key evil-insert-state-map [remap newline-and-indent] 'newline-and-indent)
  (after 'evil-leader
    (evil-leader/set-leader ",")
    (evil-leader/set-key
      "w" 'save-buffer
      "v" (kbd "C-w v C-w l")
      "s" (kbd "C-w s C-w j")
      "h h" 'help-for-help-internal
      "b d" 'kill-this-buffer)
    (after "magit-autoloads"
      (evil-leader/set-key
        "g s" 'magit-status
        "g b" 'magit-blame-mode
        "g c" 'magit-commit
        "g l" 'magit-log)))
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
      (after "helm-gtags"
        '(progn
           (define-key helm-gtags-mode-map (kbd "M-t") 'helm-gtags-find-tag)
           (define-key helm-gtags-mode-map (kbd "M-r") 'helm-gtags-find-rtag)
           (define-key helm-gtags-mode-map (kbd "M-s") 'helm-gtags-find-symbol)
           (define-key helm-gtags-mode-map (kbd "M-g M-p") 'helm-gtags-parse-file)
           (define-key helm-gtags-mode-map (kbd "C-c <") 'helm-gtags-previous-history)
           (define-key helm-gtags-mode-map (kbd "C-c >") 'helm-gtags-next-history)
           (define-key helm-gtags-mode-map (kbd "M-,") 'helm-gtags-pop-stack)))
      (after "helm-swoop-autoloads"
        (define-key evil-normal-state-map (kbd "SPC l") 'helm-swoop)
              (define-key evil-normal-state-map (kbd "SPC L") 'helm-multi-swoop)))

    (after "ace-jump-mode-autoloads"
      (define-key evil-operator-state-map (kbd "z") 'evil-ace-jump-char-mode)
      (define-key evil-normal-state-map (kbd "s") 'evil-ace-jump-char-mode)
      (define-key evil-motion-state-map (kbd "S-SPC") 'evil-ace-jump-line-mode))

    (after "multiple-cursors-autoloads"
      (after 'js2-mode
        (evil-define-key 'normal js2-mode-map (kbd "g r") 'js2r-rename-var))
      (define-key evil-normal-state-map (kbd "g r") 'mc/mark-all-like-this-dwim))
)
(provide 'init-bindings)
