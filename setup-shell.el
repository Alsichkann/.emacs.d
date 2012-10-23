(require 'multi-shell)

(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(defun clear-shell () 
  (interactive) 
  (let ((old-max comint-buffer-maximum-size)) 
    (setq comint-buffer-maximum-size 0) 
    (comint-truncate-buffer) 
    (setq comint-buffer-maximum-size old-max)))

(defun shell-mode-kill-buffer-on-exit (process state) 
  (if (or (string-match "exited abnormally with code.*" state) 
          (string-match "finished" state)) 
      (kill-buffer (current-buffer))))

(defun shell-mode-hook-func  () 
  (set-process-sentinel (get-buffer-process (current-buffer))
                        #'shell-mode-kill-buffer-on-exit))

(add-hook 'shell-mode-hook 'shell-mode-hook-func)

(provide 'setup-shell)
