(defun indent-buffer ()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun untabify-buffer ()
  (interactive)
  (untabify (point-min) (point-max)))

(defun cleanup-buffer-safe ()
  "Perform a bunch of safe operations on the whitespace content of a buffer.
Does not indent buffer, because it is used for a before-save-hook, and that
might be bad."
  (interactive)
  (untabify-buffer)
  (delete-trailing-whitespace)
  (set-buffer-file-coding-system 'utf-8))

(defun cleanup-buffer ()
  "Perform a bunch of operations on the whitespace content of a buffer.
Including indent-buffer, which should not be called automatically on save."
  (interactive)
  (cleanup-buffer-safe)
  (indent-buffer))

(defun toggle-fullscreen (&optional f)
  (interactive)
  (let ((current-value (frame-parameter nil 'fullscreen)))
    (set-frame-parameter nil 'fullscreen
                         (if (equal 'fullboth current-value)
                             (if (boundp 'old-fullscreen)
                                 old-fullscreen
                               nil)
                           (progn
                             (setq old-fullscreen current-value)
                             'fullboth)))))

(defun nuke-all-buffers ()
  "kill all buffers, leaving *scratch* only"
  (interactive)
  (mapcar
   (lambda (x)
     (kill-buffer x))
   (buffer-list))
  (delete-other-windows))

(defun create-scratch-buffer nil "create a new scratch buffer to work in.
   (could be *scratch* - *scratchX*)"
  (interactive)
  (let ((n 0) bufname)
    (while
        (progn
          (setq bufname (concat "*scratch"
                                (if (= n 0)
                                    ""
                                  (int-to-string n))
                                "*"))
          (setq n (1+ n))
          (get-buffer bufname)))
    (switch-to-buffer (get-buffer-create bufname))
    (emacs-lisp-mode)))
