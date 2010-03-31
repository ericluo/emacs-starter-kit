(setq gnus-select-method '(nntp "news.gmane.org"))
(setq user-full-name "Eric Luo")
(setq user-mail-address "eric.wenbl@gmail.com")

(setq gnus-secondary-select-methods '((nnml "")))
(setq mail-sources
      '((pop :server "pop.gmail.com"
             :port 995
             :user "eric.wenbl@gmail.com"
             :password "ericsnow327"
             :stream ssl)))
(setq message-send-mail-function 'smtpmail-send-it
      smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
      smtpmail-auth-credentials '(("smtp.gmail.com" 587 "eric.wenbl@gmail.com" nil))
      smtpmail-default-smtp-server "smtp.gmail.com"
      smtpmail-smtp-server "smtp.gmail.com"
      smtpmail-smtp-service 587
      smtpmail-local-domain "cbrc.gov.cn")

(when window-system
  (setq gnus-sum-thread-tree-indent "  ")
  (setq gnus-sum-thread-tree-root "") ;; "● ")
  (setq gnus-sum-thread-tree-false-root "") ;; "◯ ")
  (setq gnus-sum-thread-tree-single-indent "") ;; "◎ ")
  (setq gnus-sum-thread-tree-vertical        "│")
  (setq gnus-sum-thread-tree-leaf-with-other "├─► ")
  (setq gnus-sum-thread-tree-single-leaf     "╰─► "))

;; (setq gnus-summary-line-format
;;       (concat
;;        "%0{%U%R%z%}"
;;        "%3{│%}" "%1{%d%}" "%3{│%}" ;; date
;;        "  "
;;        "%4{%-20,20f%}"               ;; name
;;        "  "
;;        "%3{│%}"
;;        " "
;;        "%1{%B%}"
;;        "%s\n"))
(setq gnus-summary-line-format
      (concat
       "%0{%U%R%z%}"
       "%3{│%}" "%1{%~(pad-right 10)&user-date;%}" "%3{│%}" ;; date
       "  "
       "%4{%-20,20f%}"               ;; name
       "  "
       "%3{│%}"
       " "
       "%1{%B%}"
       "%s\n"))

(setq gnus-summary-display-arrow t)

(setq gnus-thread-sort-functions
      '(gnus-thread-sort-by-number
	gnus-thread-sort-by-most-recent-date))

(setq gnus-summary-thread-gathering-function
      'gnus-gather-threads-by-references)
