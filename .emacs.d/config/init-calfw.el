(require-package 'calfw)
;; (require 'calfw-cal)
(require 'calfw-ical)
;; (require 'calfw-howm)
;; (require 'calfw-org)

(defun my-open-calendar ()
  (interactive)
  (cfw:open-calendar-buffer
   :contents-sources
   (list
    ;; (cfw:org-create-source "Green")  ; orgmode source
    ;; (cfw:howm-create-source "Blue")  ; howm source
    ;; (cfw:cal-create-source "Orange") ; diary source
    ;; (cfw:ical-create-source "Moon" "~/moon.ics" "Gray")  ; ICS source1
    (cfw:ical-create-source "gcal" "https://www.google.com/calendar/ical/johncslui%40gmail.com/public/basic.ics" "IndianRed") ; google calendar ICS
   ))) 

(provide 'init-calfw)
