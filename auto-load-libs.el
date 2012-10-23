;; Auto load some libraries

(autoload 'slime "setup-slime" nil t)

(autoload 'slime-js-jack-in-node "setup-slime-js" nil t)
(autoload 'slime-js-jack-in-browser "setup-slime-js" nil t)

(autoload 'moccur-grep-find "setup-moccur" nil t)

(provide 'auto-load-libs)
