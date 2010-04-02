(add-to-list 'load-path "~/workspace/org-mode/contrib/lisp")

(require 'org-install)

(require 'org-babel-init)
(require 'org-babel-ruby)
(require 'org-babel-R)
(org-babel-load-library-of-babel)

(require 'org-crypt)
(setq org-crypt-key "Eric Luo")
(add-hook 'before-save-hook 'org-encrypt-entries)

(require 'remember)
(org-remember-insinuate)

(setq org-use-speed-commands t)
(setq org-refile-targets
      '((org-agenda-files :maxlevel . 5)))
(setq org-refile-use-outline-path t)
(setq org-outline-path-complete-in-steps t)
(setq org-refile-allow-creating-parent-nodes t)

(setq org-archive-location ".archive/%s::")
(setq org-directory (concat dotfiles-dir "gtd" "/"))
(setq org-default-notes-file (concat org-directory "gtd.org"))
(setq org-remember-templates
      '(("Task" ?t "* TODO %^{Topic} \n%i%?\n%t\n" org-default-notes-file "Task")
        ("Application" ?y "* TODO %^{Topic} \n%i%?\n%t\n" org-default-notes-file "Application")
        ("Maintance" ?m "* TODO %^{Topic} \n%i%?\n%t\n" org-default-notes-file "Maintance")
        ("Regulatory" ?r "* TODO %^{Topic} \n%i%?\n%t\n" org-default-notes-file "Regulatory")
        ("Asset" ?a "* TODO %^{Topic} \n%i%?\n%t\n" org-default-notes-file "Asset")
        ("Private" ?p "* TODO %^{Topic} \n%i%?\n%t\n" org-default-notes-file "Private")
        ("Finance" ?f "* TODO %^{Topic} \n\%i%?\n%t\n" org-default-notes-file "Finance")
        ("Inbox" ?i "* %^{Topic} \n\%i%?\n%t\n" org-default-notes-file "Inbox")
        ("Note" ?n "\n* %U %^{Note} \n\%i%?\n%t\n" (concat org-directory "notes.org"))))
(setq org-special-ctrl-a/e t)


(provide 'starter-kit-org)
