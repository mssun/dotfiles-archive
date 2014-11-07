(after 'evil
    (after "evil-leader-autoloads"
	(evil-leader/set-leader ",")
	(evil-leader/set-key
	  "e" 'find-file
	  "b" 'switch-to-buffer
	  "k" 'kill-buffer
	  "w" 'save-buffer)))

(provide 'init-bindings)
