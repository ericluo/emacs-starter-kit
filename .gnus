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
