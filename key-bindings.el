;; Buffer
(global-set-key (kbd "C-c b") 'create-scratch-buffer)
(global-set-key (kbd "C-c s") 'multi-shell-new)
(global-set-key (kbd "C-c n") 'cleanup-buffer)

;; Window
(global-set-key [f11] 'toggle-fullscreen)

;; File & directory
(global-set-key (kbd "C-x f") 'recentf-ido-find-file)
(global-set-key (kbd "C-x M-f") 'find-or-create-file-at-point)
(global-set-key (kbd "C-x C-j") 'open-buffer-directory)

;; Ace jump mode
(global-set-key (kbd "C-c SPC") 'ace-jump-mode)
(global-set-key (kbd "M-z") 'zap-to-char)
(global-set-key (kbd "M-Z") 'zap-to-char-exclusive)
(global-set-key (kbd "M-m") 'jump-char-forward)
(global-set-key (kbd "M-M") 'jump-char-backward)

;; Mark multiple
(global-set-key (kbd "C-<") 'mark-previous-like-this)
(global-set-key (kbd "C->") 'mark-next-like-this)
(global-set-key (kbd "C-M-m") 'mark-more-like-this)
(global-set-key (kbd "C-M-S-m") 'mark-all-like-this)
(global-set-key (kbd "C-*") 'mark-all-like-this)

;; Expand region
(global-set-key (kbd "M-8") 'er/expand-region)
(global-set-key (kbd "M-9") 'er/contract-region)

;; Thingopt & isearch enhance
(global-set-key (kbd "M-7") 'upward-mark-thing)
(define-key isearch-mode-map (kbd "C-w") 'upward-isearch-thing)

;; Edit shortcut
;; (global-set-key "%" 'match-paren)
(global-set-key (kbd "C-\"") 'toggle-quotes)
(global-set-key (kbd "C-+") 'change-number-at-point)

(global-set-key (kbd "C-x C-y") 'browse-kill-ring)

;; (global-set-key (kbd "C-x p") 'etags-select-find-tag-at-point)
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-c a") 'go-to-char)

;; Moving in line
(global-set-key (kbd "C-a") 'smart-beginning-of-line)
(global-set-key (kbd "C-e") 'smart-end-of-line)

;; Copying line
(global-set-key (kbd "C-S-a") 'copy-to-beginning-of-line)
(global-set-key (kbd "C-S-e") 'copy-to-end-of-line)

;; Killing line
(global-set-key (kbd "C-S-K") 'kill-and-retry-line)
(global-set-key (kbd "C-S-w") 'kill-region)
(global-set-key (kbd "C-w") 'kill-region-or-backward-word)
(global-set-key (kbd "C-c C-w") 'kill-to-beginning-of-line)

;; Change inner/outer
(global-set-key (kbd "M-i") 'change-inner)
(global-set-key (kbd "M-o") 'change-outer)

;; Duplicating
(global-set-key (kbd "C-c C-d") 'duplicate-current-line-or-region)

;; Creating new line
(define-key global-map (kbd "RET") 'newline-and-indent)
(define-key global-map (kbd "<C-return>") 'new-line-below)
(define-key global-map (kbd "<C-S-return>") 'new-line-above)
(define-key global-map (kbd "<M-return>") 'new-line-in-between)

;; Moving line
(global-set-key (kbd "<M-up>") 'swap-line-up)
(global-set-key (kbd "<M-down>") 'swap-line-down)

;; Smart forward What should be fine ?
;; (global-set-key (kbd "M-S-<up>") 'smart-up)
;; (global-set-key (kbd "M-S-<down>") 'smart-down)
;; (global-set-key (kbd "M-S-<left>") 'smart-backward)
;; (global-set-key (kbd "M-S-<right>") 'smart-forward)

;; Sometimes very useful
(global-set-key (kbd "C-o") 'jump-to-space-forward)
(global-set-key (kbd "C-S-o") 'mark-to-space-forward)

(global-set-key "\M-;" 'custom-comment-dwim)

;; Open link
(global-set-key (kbd "C-c C-o") 'browse-url-at-point)

;; Indent
(global-set-key [f7] 'indent-buffer)    

;; Eval
(global-set-key (kbd "C-c v") 'eval-buffer)

;; Edit file with sudo
(global-set-key (kbd "M-s e") 'sudo-edit)

;; Custom
(global-set-key (kbd "C-x C-m") 'smex)
(global-set-key (kbd "C-c C-x C-m") 'smex-major-mode-commands)

(global-set-key (kbd "M-`") 'lacarte-execute-menu-command)

(provide 'key-bindings)
