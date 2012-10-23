(require 'yasnippet)

;; Use only own snippets, do not use bundled ones
(setq yas/snippet-dirs '("~/.emacs.d/snippets"))
(yas/global-mode 1)

;; Jump to end of snippet definition
(define-key yas/keymap (kbd "<return>") 'yas/exit-all-snippets)

;; No dropdowns please, yas
(setq yas/prompt-functions '(yas/ido-prompt yas/completing-prompt))

;; (setq yas/also-auto-indent-first-line t)
(setq yas/trigger-key "C-x j")

(provide 'setup-yasnippet)
