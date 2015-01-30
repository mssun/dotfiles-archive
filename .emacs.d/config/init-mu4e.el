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

(setq mu4e-maildir-shortcuts
    '( ("/gmail/INBOX"  . ?i)
       ("/gmail/sent"   . ?s)
       ("/gmail/trash"  . ?t)
       ("/gmail/all"    . ?a)))

;; allow for updating mail using 'U' in the main view:
(setq mu4e-get-mail-command "offlineimap")
(setq mu4e-update-interval 60)

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
(setq mu4e-attachment-dir "~/Downloads")
(setq mu4e-view-show-images t
      mu4e-view-image-max-width 700)

(setq mu4e-html2text-command "w3m -dump -cols 110 -T text/html")
(setq mu4e-headers-fields '((:human-date . 12)
                            (:from-or-to . 22)
                            (:subject    . 74)))

(provide 'init-mu4e)
