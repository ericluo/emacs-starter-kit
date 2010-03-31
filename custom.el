(require 'color-theme)
(eval-after-load  "color-theme"
  '(progn
     (color-theme-arjen)))


;; display ansi color in emacs shell
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;;
(setq set-mark-command-repeat-pop t)

(setq gnus-init-file (concat dotfiles-dir ".gnus"))

(add-to-list 'load-path (concat dotfiles-dir "rinari"))
(require 'rinari)
