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

(setq bbdb-file (concat dotfiles-dir ".bbdb.gpg"))

(provide 'starter-kit-bbdb)
