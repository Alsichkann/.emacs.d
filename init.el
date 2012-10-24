;; Set path to .emacs.d
(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))

;; Set path to dependencies
(setq site-lisp-dir (expand-file-name "site-lisp" dotfiles-dir))

;; Set up load path
(add-to-list 'load-path dotfiles-dir)
(add-to-list 'load-path site-lisp-dir)

;; Add external projects to load path
(dolist (project (directory-files site-lisp-dir t "\\w+"))
  (when (file-directory-p project)
    (add-to-list 'load-path project)))

;; Load themes
;; (setq themes-dir (expand-file-name "themes" dotfiles-dir))
;; (add-to-list 'load-path themes-dir)
;; (dolist (file (directory-files themes-dir t "\\w+"))
;;   (when (file-regular-p file)
;;     (load file)))

;; Set up appearance
(require 'appearance)

(require 'saveplace)
(require 'etags-select)
(require 'doxygen)
(require 'auto-highlight-symbol)
(require 'expand-region)
(require 'change-inner)
(require 'smart-forward)
(require 'jump-char)
(require 'wc-mode)
(require 'elisp-format)
(require 'mark-more-like-this)
(require 'browse-kill-ring)
(require 'lacarte)
(require 'thingopt)

(require 'projectile)
(projectile-global-mode)

(require 'smex)
(smex-initialize)

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-saved-items 100)

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

(require 'pretty-lambdada)
(pretty-lambda-for-modes)

(require 'setup-ace-jump)
(require 'setup-autocomplete)
(require 'setup-autopair)
(require 'setup-dired)
(require 'setup-ido)
(require 'setup-latex)
(require 'setup-org)
(require 'setup-shell)

;; Misc
(require 'sane-defaults)

;; Auto mode mapping
(require 'mode-mappings)

;; Auto load
(require 'auto-load-libs)

;; Set up key bindings
(require 'key-bindings)

;; Keep emacs Custom-settings in separate file
(setq custom-file (expand-file-name "custom.el" dotfiles-dir))
(load custom-file)

;; Functions (load all files in defuns-dir)
(setq defuns-dir (expand-file-name "defuns" dotfiles-dir))
(dolist (file (directory-files defuns-dir t "\\w+"))
  (when (file-regular-p file)
    (load file)))

;; Command alias
(load "alias.el")

;; Emacs server
(require 'server)
(unless (server-running-p)
  (server-start))

