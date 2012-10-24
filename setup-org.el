;; Basic
(setq org-directory "~/org")
(setq org-export-html-postamble nil)

(add-hook 'org-mode-hook 'turn-on-auto-fill)

;; TODO
(setq org-log-done 'time)
(setq org-todo-keywords
      '((sequence "TODO(t!)" "|" "DONE(d!)")
        (sequence "REPORT(r!)" "BUG(b!)" "KNOWNCAUSE(k!)" "|" "FIXED(f!)")
        (sequence "|" "CANCELED(c!)")))

;; Tags
(setq org-tag-alist '(("@work" . ?w) ("@home" . ?h) ("laptop" . ?l)))

;; Capture
(setq org-directory-capture (concat org-directory "/capture"))
(define-key global-map "\C-cc" 'org-capture)
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline (concat org-directory-capture "/gtd.org") "Tasks")
         "* TODO %?\n  %i\n  %a")
        ("n" "Note" entry (file+datetree (concat org-directory-capture "/notes.org") "Notes")
         "* %?\nEntered on %U\n  %i\n  %a")))

;; Publish
(setq org-publish-project-alist
      '(("org"
         :base-directory "~/org"
         :publishing-directory "~/org/pub"
         :section-numbers nil
         :table-of-contents nil
         ;; :style "<link rel=\"stylesheet\"
         ;;             href=\"../css/worg.css\"
         ;;             type=\"text/css\"/>"
         )))

(provide' setup-org)
