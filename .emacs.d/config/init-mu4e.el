(require-package 'mu4e)
(require-package 'mu4e-maildirs-extension)
(mu4e-maildirs-extension)
(require 'mu4e)

;; default
(setq mu4e-maildir "~/.mail")

(setq mu4e-drafts-folder "/gmail/drafts")
(setq mu4e-sent-folder   "/gmail/sent")
(setq mu4e-trash-folder  "/gmail/trash")

;; don't save message to Sent Messages, Gmail/IMAP takes care of this
(setq mu4e-sent-messages-behavior 'delete)

;; (See the documentation for `mu4e-sent-messages-behavior' if you have
;; additional non-Gmail addresses and want assign them different
;; behavior.)

;; setup some handy shortcuts
;; you can quickly switch to your Inbox -- press ``ji''
;; then, when you want archive some messages, move them to
;; the 'All Mail' folder by pressing ``ma''.

;; These following key bindings doesn't work. I still don't know why.
;; (eval-after-load 'mu4e
;;   '(progn
;;      (evil-make-overriding-map mu4e-view-mode-map 'normal t)
;;      (evil-make-overriding-map mu4e-main-mode-map 'normal t)
;;      (evil-make-overriding-map mu4e-headers-mode-map 'normal t)
;; 
;;      (evil-add-hjkl-bindings mu4e-view-mode-map 'normal
;;        "J" 'mu4e~headers-jump-to-maildir
;;        "j" 'evil-next-line
;;        "C" 'mu4e-compose-new
;;        "o" 'mu4e-view-message
;;        "Q" 'mu4e-raw-view-quit-buffer)
;; 
;;      (evil-add-hjkl-bindings mu4e-header-mode-map 'normal
;;        "J" 'mu4e~headers-jump-to-maildir
;;        "j" 'evil-next-line
;;        "C" 'mu4e-compose-new
;;        "o" 'mu4e-view-message)
;; 
;;      (evil-add-hjkl-bindings mu4e-main-mode-map 'normal
;;        "J" 'mu4e~headers-jump-to-maildir
;;        "j" 'evil-next-line
;;        "RET" 'mu4e-view-message)))

(setq mu4e-maildir-shortcuts
    '( ("/gmail/INBOX"  . ?i)
       ("/gmail/sent"   . ?s)
       ("/gmail/trash"  . ?t)
       ("/gmail/all"    . ?a)))

;; allow for updating mail using 'U' in the main view:
(setq mu4e-get-mail-command "offlineimap")
(setq mu4e-update-interval 150)

;; something about ourselves
(setq
   user-mail-address "mssun@cse.cuhk.edu.hk"
   user-full-name  "Mingshen Sun"
   mu4e-compose-signature
    (concat
      "Best,\n"
      "Mingshen\n"))

;; sending mail -- replace USERNAME with your gmail username
;; also, make sure the gnutls command line utils are installed
;; package 'gnutls-bin' in Debian/Ubuntu

(require 'smtpmail)
;; (setq message-send-mail-function 'smtpmail-send-it
;;    starttls-use-gnutls t
;;    smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
;;    smtpmail-auth-credentials
;;      '(("smtp.gmail.com" 587 "USERNAME@gmail.com" nil))
;;    smtpmail-default-smtp-server "smtp.gmail.com"
;;    smtpmail-smtp-server "smtp.gmail.com"
;;    smtpmail-smtp-service 587)

;; alternatively, for emacs-24 you can use:
(setq message-send-mail-function 'smtpmail-send-it
     smtpmail-stream-type 'starttls
     smtpmail-default-smtp-server "smtp.gmail.com"
     smtpmail-smtp-server "smtp.gmail.com"
     smtpmail-smtp-service 587)
(add-hook 'message-send-hook
          (lambda ()
            (unless (yes-or-no-p "Sure you want to send this?")
              (signal 'quit nil))))

;; don't keep message buffers around
(setq message-kill-buffer-on-exit t)

(setq mu4e-hide-index-messages t)

(provide 'init-mu4e)
