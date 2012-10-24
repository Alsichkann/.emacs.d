(require 'pos-tip)

(require 'auto-complete-config)
(require 'auto-complete-auctex)

(add-to-list 'ac-dictionary-directories
             "~/.emacs.d/site-lisp/autocomplete/ac-dict")

(ac-config-default)
(setq ac-use-menu-map t)
(setq ac-auto-show-menu 0.2)
(setq ac-ignore-case t)
(setq ac-fuzzy-enable t)
(setq ac-quick-help-delay 1.0)

(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)

(defun add-ac-trigger-command (command)
  (if (functionp command)
      (setq ac-trigger-commands (cons command ac-trigger-commands))))
(add-ac-trigger-command 'backward-delete-char-untabify)
(add-ac-trigger-command 'autopair-backspace)

(setq-default ac-sources '(ac-source-abbrev
                           ac-source-words-in-buffer
                           ac-source-words-in-same-mode-buffers
                           ac-source-files-in-current-dir
                           ac-source-filename
                           ac-source-dictionary))

(ac-flyspell-workaround)

(provide 'setup-autocomplete)
