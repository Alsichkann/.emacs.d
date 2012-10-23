;; LispScript
;; (autoload 'lispyscript-mode "lispyscript-mode")
;; (add-to-list 'auto-mode-alist '("\\.ls$" . lispyscript-mode))

;; LaTeX
(add-to-list 'auto-mode-alist '("\\.tex$" . LaTeX-mode))
;; (add-hook 'latex-mode-hook
;;           (lambda ()
;;             (require 'setup-latex)))

;; Go
(require 'go-mode-load)

;; CSS
(add-to-list 'auto-mode-alist '("\\.css$" . css-mode))
(add-hook 'css-mode-hook (lambda ()
                           (require 'rainbow-mode)))

;; Cucumber
(autoload 'feature-mode "feature-mode")
(add-to-list 'auto-mode-alist '("\\.feature$" . feature-mode))

;; Jade and Stylus (sws = significant whitespace)
(autoload 'sws-mode "sws-mode")
(autoload 'jade-mode "jade-mode")
(add-to-list 'auto-mode-alist '("\\.styl$" . sws-mode))
(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))

;; LispScript
(add-to-list 'auto-mode-alist '("\\.ls$" . lisp-mode))

;; HTML
(add-to-list 'auto-mode-alist '("\\.html\\'" . html-mode))
(add-to-list 'auto-mode-alist '("\\.jsp$" . html-mode))
(add-to-list 'auto-mode-alist '("\\.jspf$" . html-mode))
(add-to-list 'auto-mode-alist '("\\.tag$" . html-mode))
(add-to-list 'auto-mode-alist '("\\.vm$" . html-mode))
(add-hook 'sgml-mode-hook
          (lambda ()
            (require 'rename-sgml-tag)
            (define-key sgml-mode-map (kbd "C-c C-r") 'rename-sgml-tag)))

;; Clojure
(autoload 'clojure-mode "clojure-mode")
(add-to-list 'auto-mode-alist '("\\.clj$" . clojure-mode))
(add-to-list 'auto-mode-alist '("\\.cljs$" . clojure-mode))
(add-hook 'clojure-mode-hook (lambda ()
                               (require 'setup-clojure)))

;; JavaScript
;; (autoload 'js2-mode "js2-mode" nil t)
;; (add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
;; (add-hook 'js2-mode-hook (lambda () (require 'setup-js2)))
(add-hook 'js-mode-hook (lambda ()
                          ;; (require 'setup-js2)
                          (setq tab-width 2)
                          (setq js-indent-level 2)))

;; JSON
(autoload 'json-mode "json-mode")
(add-to-list 'auto-mode-alist '("\\.json$" . json-mode))

;; Coffee
(autoload 'coffee-mode "coffee-mode")
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))
(defun coffee-custom ()
  "coffee-mode-hook"
  (make-local-variable 'tab-width)
  (set 'tab-width 2)
  (setq coffee-js-mode 'javascript-mode)
  (setq coffee-args-compile '("-c" "--bare"))
  (setq coffee-debug-mode t)
  (define-key coffee-mode-map [(meta r)] 'coffee-compile-buffer)
  (and (file-exists-p (buffer-file-name))
       (file-exists-p (coffee-compiled-file-name))
       (coffee-cos-mode t)))
(add-hook 'coffee-mode-hook 'coffee-custom)

;; Snippets
(autoload 'snippet-mode "snippet-mode")
(add-to-list 'auto-mode-alist '("yasnippet/snippets" . snippet-mode))

;; Markdown
(autoload 'markdown-mode "markdown-mode")
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown$" . markdown-mode))
(add-hook 'markdown-mode-hook
          (lambda ()
            (define-key markdown-mode-map (kbd "<tab>") 'yas/expand)))

;; Mustache
(autoload 'mustache-mode "mustache-mode")
(add-to-list 'auto-mode-alist '("\\.mustache$" . mustache-mode))
(add-to-list 'auto-mode-alist '("\\.hjs$" . mustache-mode))

;; EJS
(add-to-list 'auto-mode-alist '("\\.ejs$" . html-mode))

;; PHP
(autoload 'php-mode "php-mode")
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))

;; org-mode
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

(provide 'mode-mappings)
