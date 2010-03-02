(require 'color-theme)
(eval-after-load  "color-theme"
  '(progn
     (color-theme-arjen)))

(org-remember-insinuate)
(setq org-directory "~/gtd")
(setq org-default-notes-file (concat org-directory "/gtd.org"))
(global-set-key (kbd "C-c r") 'org-remember)

(setq org-agenda-files (list "~/gtd/gtd.org" "~/gtd/notes.org"))
(setq org-remember-templates
      '(("Task" ?t "* TODO %^{Topic} \n%i%?\n" org-default-notes-file "Task")
        ("Administrator" ?a "* TODO %^{Topic} \n%i%?\n" org-default-notes-file "Administrator")
        ("Maintance" ?m "* TODO %^{Topic} \n%i%?\n" org-default-notes-file "Maintance")
        ("Regulatory" ?r "* TODO %^{Topic} \n%i%?\n" org-default-notes-file "Regulatory")
        ("Asset" ?a "* TODO %^{Topic} \n%i%?\n" org-default-notes-file "Asset")
        ("Private" ?p "* TODO %^{Topic} \n%i%?\n" org-default-notes-file "Private")
        ("Inbox" ?i "* %^{Topic} \n\%i%?\n" org-default-notes-file "Inbox")
        ("Finance" ?f "* %^{Topic} \n\%i%?\n" org-default-notes-file "Finance")
        ("Note" ?n "\n* %U %^{Note} \n\%i%?\n" (concat org-directory "/notes.org"))))

;; display ansi color in emacs shell
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;;
(setq set-mark-command-repeat-pop t)

(setq gnus-init-file (concat dotfiles-dir "/.gnus"))
(setq bbdb-file (concat dotfiles-dir "/.bbdb"))
