(require-package 'org)
(add-hook
  'org-load-hook
  (lambda()
    (add-hook 'org-mode-hook (lambda ()(flyspell-mode t)))
  )
 )
(provide 'init-org)
