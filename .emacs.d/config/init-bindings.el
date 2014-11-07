(after 'evil
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
