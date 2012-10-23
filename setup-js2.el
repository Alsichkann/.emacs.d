(setq-default js2-allow-rhino-new-expr-initializer nil)
(setq-default js2-auto-indent-p nil)
(setq-default js2-enter-indents-newline t)
(setq-default js2-global-externs '("module" "require" "jQuery" "$" "_" "buster"
                                   "sinon" "assert" "refute" "setTimeout"
                                   "clearTimeout" "setInterval" "clearInterval"
                                   "location" "__dirname" "console" "JSON"))
(setq-default js2-idle-timer-delay 0.1)
(setq-default js2-indent-on-enter-key nil)
(setq-default js2-mirror-mode nil)
(setq-default js2-strict-inconsistent-return-warning nil)
(setq-default js2-auto-indent-p t)
(setq-default js2-rebind-eol-bol-keys nil)
(setq-default js2-include-rhino-externs nil)
(setq-default js2-include-gears-externs nil)
(setq-default js2-concat-multiline-strings 'eol)

(require 'js2-mode)
(require 'js2-imenu-extras)
(js2-imenu-extras-setup)

;; Use lambda for anonymous functions
(font-lock-add-keywords
 'js2-mode
 `(("\\(function\\) *(" (0
                         (progn
                           (compose-region (match-beginning 1)
                                           (match-end 1) "\u0192")
                           nil)))))

;; Use right arrow for return in one-line functions
(font-lock-add-keywords 
 'js2-mode
 `(("function *([^)]*) *{ *\\(return\\) " (0 
                                           (progn 
                                             (compose-region (match-beginning 1) 
                                                             (match-end 1)
                                                             "\u2190")
                                             nil)))))

;; After js2 has parsed a js file, we look for jslint globals decl
;; comment ("/* global Fred, _, Harry */") and
;; add any symbols to a buffer-local var of acceptable global vars
;; Note that we also support the "symbol: true" way of specifying names
;; via a hack (remove any ":true" to make it look like a plain decl,
;; and any ':false' are left behind so they'll effectively be ignored as
;; you can;t have a symbol called "someName:false"
(add-hook 'js2-post-parse-callbacks
          (lambda ()
            (when (> (buffer-size) 0)
              (let ((btext (replace-regexp-in-string ": *true" " "
                                                     (replace-regexp-in-string
                                                      "[\n\t ]+" " "
                                                      (buffer-substring-no-properties
                                                       1
                                                       (buffer-size))
                                                      t t))))
                (mapc (apply-partially 'add-to-list 'js2-additional-externs)
                      (split-string
                       (if (string-match "/\\* *global *\\(.*?\\) *\\*/" btext)
                           (match-string-no-properties 1 btext)
                         "")
                       " *, *" t))))))

(js2-mode)

(provide 'setup-js2)
