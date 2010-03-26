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
      '(("Task" ?t "* TODO %^{Topic} \n%i%?\n%t\n" org-default-notes-file "Task")
        ("Application" ?y "* TODO %^{Topic} \n%i%?\n%t\n" org-default-notes-file "Application")
        ("Maintance" ?m "* TODO %^{Topic} \n%i%?\n%t\n" org-default-notes-file "Maintance")
        ("Regulatory" ?r "* TODO %^{Topic} \n%i%?\n%t\n" org-default-notes-file "Regulatory")
        ("Asset" ?a "* TODO %^{Topic} \n%i%?\n%t\n" org-default-notes-file "Asset")
        ("Private" ?p "* TODO %^{Topic} \n%i%?\n%t\n" org-default-notes-file "Private")
        ("Finance" ?f "* TODO %^{Topic} \n\%i%?\n%t\n" org-default-notes-file "Finance")
        ("Inbox" ?i "* %^{Topic} \n\%i%?\n%t\n" org-default-notes-file "Inbox")
        ("Note" ?n "\n* %U %^{Note} \n\%i%?\n%t\n" (concat org-directory "notes.org"))))

;; display ansi color in emacs shell
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;;
(setq set-mark-command-repeat-pop t)

(setq gnus-init-file (concat dotfiles-dir ".gnus"))
(setq bbdb-file (concat dotfiles-dir ".bbdb.gpg"))

(add-to-list 'load-path (concat dotfiles-dir "rinari"))
(require 'rinari)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.32"))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

(require 'anything)
(require 'anything-config)  
(defun ericluo-anything ()
  (interactive)
  (anything-other-buffer
   '(anything-c-source-info-pages
     anything-c-source-emacs-commands
     anything-c-source-bookmarks
     anything-c-source-bookmark-set
     anything-c-source-imenu
     anything-c-source-ctags
     anything-c-source-kill-ring
     anything-c-source-register
     anything-c-source-org-headline
     anything-c-source-bbdb
     anything-c-source-create)
   " *ericluo-anything*"))
(global-set-key (kbd "M-X") 'ericluo-anything)

(require 'epa)
(epa-file-enable)
