(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)

(add-hook 'LaTeX-mode-hook
          '(lambda ()
             (auto-fill-mode)
             (LaTeX-math-mode)
             (turn-on-reftex)
             (setq reftex-toc-split-windows-horizontally t)
             (setq reftex-toc-split-windows-fraction 0.4)
             (setq TeX-auto-save t)
             (setq TeX-parse-self t)
             (setq TeX-PDF-mode t)
             (setq TeX-view-program-list
                   '(("evince" "evince %o")))))

(provide 'setup-latex)
