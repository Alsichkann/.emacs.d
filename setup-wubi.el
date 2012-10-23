(require 'wubi)

(wubi-load-local-phrases) ; add user's Wubi phrases
(register-input-method
 "chinese-wubi" "Chinese-GB" 'quail-use-package
 "WuBi" "WuBi"
 "wubi")
(setq default-input-method "chinese-wubi")

(provide 'setup-wubi)
