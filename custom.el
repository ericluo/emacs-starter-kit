(require 'color-theme)
(eval-after-load  "color-theme"
  '(progn
     (color-theme-arjen)))

(org-remember-insinuate)
(setq org-directory "~/gtd")
(setq org-default-notes-file (concat org-directory "/gtd.org"))
(global-set-key (kbd "C-c r") 'org-remember)

(setq org-agenda-files (list "~/gtd/gtd.org"))
(setq org-remember-templates
      '(("Task" ?t "* TODO %^{Topic} \n%i%?\n" "~/gtd/gtd.org" "Task")
        ("Inbox" ?i "* %^{Topic} \n\%i%?\n" "~/gtd/gtd.org" "Inbox")
        ("Note" ?n "\n* %U %^{Note} \n\%i%?\n" "~/gtd/notes.org")))

