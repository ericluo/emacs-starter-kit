(require 'anything)
(require 'anything-config)  
(defun ericluo-anything ()
  (interactive)
  (anything-other-buffer
   '(anything-c-source-buffers+
     ;anything-c-source-find-files
     anything-c-source-locate
     anything-c-source-info-pages
     anything-c-source-emacs-commands
     anything-c-source-bookmarks
     anything-c-source-imenu
     anything-c-source-ctags
     anything-c-source-kill-ring
     anything-c-source-mark-ring
     anything-c-source-global-mark-ring
     anything-c-source-register
     anything-c-source-org-headline
     anything-c-source-bbdb
     anything-c-source-occur)
   " *ericluo-anything*"))
(global-set-key (kbd "M-X") 'ericluo-anything)

(provide 'starter-kit-anything)
