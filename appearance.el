;; Set window title
(setq frame-title-format '("lambda@" system-name ": %f"))

;; Hide tool bar and scorll bar
(set-scroll-bar-mode nil)
(tool-bar-mode 0)
(menu-bar-mode 0)

;; New frame hook
(add-hook 'before-make-frame-hook 
          (lambda () 
            (set-scroll-bar-mode nil)))
;; Font
(set-default-font "DejaVu Sans Mono-11")
;; (set-default-font "Courier 10 Pitch-11")
;; (set-default-font "Monofur-13")
;; (set-default-font "YaHei Consolas Hybrid-12")
;; (set-default-font "Monaco-11")
;; (set-default-font "Inconsolata-13")
;; (set-default-font "Menlo-12")
;; (set-default-font "Lucida Console-12")

(provide 'appearance)
