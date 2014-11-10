(require-package 'org)
(add-hook
  'org-load-hook
  (lambda()
    (add-hook 'org-mode-hook flyspell-mode)
  )
 )
(provide 'init-org)
