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
      (define-key company-active-map (kbd "C-p") 'company-select-previous)))

(provide 'init-bindings)
