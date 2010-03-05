(require 'bbdb)
(bbdb-initialize 'gnus 'message)

;; bbdb 自己检查你填写的电话是否符合北美标准，
;; 如果你不是生活在北美，应该取消这种检查
(setq bbdb-north-american-phone-numbers-p nil)

;; 把你的 email 地址告诉 bbdb
(setq bbdb-user-mail-names
      (regexp-opt '("eric.wenbl@gmail.com"
                    "cbrc_hb@126.com")))
;; 补全 email 地址的时候循环往复
(setq bbdb-complete-name-allow-cycling t)
;; No popup-buffers
(setq bbdb-use-pop-up nil)

(require 'color-theme)
(eval-after-load  "color-theme"
  '(progn
     (color-theme-arjen)))

(org-remember-insinuate)
(setq org-directory (concat dotfiles-dir "gtd" "/"))
(setq org-default-notes-file (concat org-directory "gtd.org"))


(setq org-agenda-files (list (concat org-directory "gtd.org")))
(setq org-remember-templates
      '(("Task" ?t "* TODO %^{Topic} \n%i%?\n" org-default-notes-file "Task")
        ("Application" ?y "* TODO %^{Topic} \n%i%?\n" org-default-notes-file "Application")
        ("Maintance" ?m "* TODO %^{Topic} \n%i%?\n" org-default-notes-file "Maintance")
        ("Regulatory" ?r "* TODO %^{Topic} \n%i%?\n" org-default-notes-file "Regulatory")
        ("Asset" ?a "* TODO %^{Topic} \n%i%?\n" org-default-notes-file "Asset")
        ("Private" ?p "* TODO %^{Topic} \n%i%?\n" org-default-notes-file "Private")
        ("Inbox" ?i "* %^{Topic} \n\%i%?\n" org-default-notes-file "Inbox")
        ("Finance" ?f "* %^{Topic} \n\%i%?\n" org-default-notes-file "Finance")
        ("Note" ?n "\n* %U %^{Note} \n\%i%?\n" (concat org-directory "notes.org"))))

;; display ansi color in emacs shell
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;;
(setq set-mark-command-repeat-pop t)

(setq gnus-init-file (concat dotfiles-dir ".gnus"))
(setq bbdb-file (concat dotfiles-dir ".bbdb"))

(add-to-list 'load-path (concat dotfiles-dir "rinari"))
(require 'rinari)
