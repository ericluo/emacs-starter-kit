(require 'color-theme)
(eval-after-load  "color-theme"
  '(progn
     (color-theme-arjen)))

(setq sentence-end "\\([。！？]\\|……\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)


;; display ansi color in emacs shell
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;;
(setq set-mark-command-repeat-pop t)

(eval-after-load 'command-frequency
  '(command-frequency-mode 1))

(setq gnus-init-file (concat dotfiles-dir ".gnus"))

(add-to-list 'load-path (concat dotfiles-dir "rinari"))
(require 'rinari)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/.emacs.d/gtd/gtd.org"))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
