(require-package 'smartparens)
(require 'smartparens-config)

(setq sp-autoescape-string-quote nil)
(setq sp-autoinsert-quote-if-followed-by-closing-pair nil)
(sp-use-smartparens-bindings)
(smartparens-global-mode t)
(provide 'init-smartparens)
