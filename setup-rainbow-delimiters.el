(require 'rainbow-delimiters)
(add-hook 'slime-mode-hook 'rainbow-delimiters-mode)
(add-hook 'slime-repl-mode-hook 'rainbow-delimiters-mode)
(global-rainbow-delimiters-mode)

(provide 'setup-rainbow-delimiters)
