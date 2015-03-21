(require-package 'auctex)
(setq TeX-parse-self t)
(setq TeX-auto-save t)
(setq-default TeX-master nil)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)
(setq TeX-PDF-mode t)
(setq LaTeX-item-indent 0)
(setq TeX-newline-function 'newline-and-indent)

(setq TeX-command-default "xelatex")
(dolist (hook '(LaTeX-mode-hook))
  (add-hook hook (lambda ()
    (push
      '("latexmk" "latexmk -pdf %s" TeX-run-TeX nil t
        :help "Run latexmk on file")
      TeX-command-list)))
  (add-hook hook (lambda ()
    (push
      '("xelatexmk" "latexmk -xelatex %s" TeX-run-TeX nil t
        :help "Run latexmk on file with xelatex")
      TeX-command-list)))
  (add-hook hook '(lambda() (setq TeX-command-default "latexmk")))
  (add-hook hook 'turn-on-auto-fill)
  (add-hook hook (lambda() (flyspell-mode 1)))
  (add-hook hook '(lambda() (local-set-key "\C-c\C-x" (lambda () 
                   (interactive)
                   (TeX-save-document (TeX-master-file))
                   (TeX-command "xelatexmk" 'TeX-master-file' -1))))))
(setq TeX-view-program-selection '((output-pdf "PDF Viewer")))
(if (eq system-type 'darwin)
  (progn
    (setq TeX-view-program-list '(("PDF Viewer" "/Applications/Skim.app/Contents/SharedSupport/displayline -b -g %n %o %b"))))
  (progn
    (setq TeX-view-program-list '(("PDF Viewer" "evince --page-index=%(outpage) %o")))))
;; (setq font-latex-fontify-script nil)
;; (setq font-latex-fontify-sectioning 'color)
(provide 'init-auctex)
