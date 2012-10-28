;; Language
(set-language-environment 'Chinese-GB)
(setq locale-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8)

;; More logs
(setq message-log-max t)

;; Remove the bell ringing
(setq ring-bell-function 'ignore)

;; Don't Make backup files
(setq make-backup-files nil)

;; Clear scratch
(setq initial-scratch-message nil)

(setq undo-outer-limit 5000000)

(setq mark-ring-max 4096)

(setq eval-expression-print-length nil)

(setq eval-expression-print-level nil)

;; Highlight selection region
(transient-mark-mode t)

(require 'smooth-scrolling)

;; Show paren
(show-paren-mode t)

;; Set cursor type
(setq-default cursor-type 'box)

;; Set to support extenal clipboard
(setq x-select-enable-clipboard t)

;; If emacs is run in a terminal, the clipboard- functions have no
;; effect. Instead, we use of xsel, see
;; http://www.vergenet.net/~conrad/software/xsel/ -- "a command-line
;; program for getting and setting the contents of the X selection"
(unless window-system
  (when (getenv "DISPLAY")
    ;; Callback for when user cuts
    (defun xsel-cut-function (text &optional push)
      ;; Insert text to temp-buffer, and "send" content to xsel stdin
      (with-temp-buffer
        (insert text)
        ;; I prefer using the "clipboard" selection (the one the
        ;; typically is used by c-c/c-v) before the primary selection
        ;; (that uses mouse-select/middle-button-click)
        (call-process-region (point-min) (point-max) "xsel" nil 0 nil "--clipboard" "--input")))
    ;; Call back for when user pastes
    (defun xsel-paste-function()
      ;; Find out what is current selection by xsel. If it is different
      ;; from the top of the kill-ring (car kill-ring), then return
      ;; it. Else, nil is returned, so whatever is in the top of the
      ;; kill-ring will be used.
      (let ((xsel-output (shell-command-to-string "xsel --clipboard --output")))
        (unless (string= (car kill-ring) xsel-output)
          xsel-output )))
    ;; Attach callbacks to hooks
    (setq interprogram-cut-function 'xsel-cut-function)
    (setq interprogram-paste-function 'xsel-paste-function)
    ;; Idea from
    ;; http://shreevatsa.wordpress.com/2006/10/22/emacs-copypaste-and-x/
    ;; http://www.mail-archive.com/help-gnu-emacs@gnu.org/msg03577.html
    ))

;; Set new line to EOF
;; (setq require-final-newline t)

;; Set a big kill ring
(setq kill-ring-max 10000)

;; Reload tag table
(setq tags-revert-without-query t)

(setq mouse-wheel-progressive-speed nil)

(column-number-mode t)

;; Run at full power please
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)

;; Auto fill mode
;; (auto-fill-mode 1)
(setq-default auto-fill-function 'do-auto-fill)

;; Set tab
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; Disalbe auto save
(setq auto-save-default nil)

;; Save place of file
(setq-default save-place t)

;; Save file of last session
(desktop-save-mode 1)

(provide 'sane-defaults)
