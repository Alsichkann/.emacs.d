(defun open-buffer-directory ()
  "Open buffer directory or home."
  (interactive)
  (if (buffer-file-name)
      (dired default-directory)
    (dired "~")))

(defun rename-current-buffer-file ()
  "Renames current buffer and file it is visiting." 
  (interactive) 
  (let ((name (buffer-name)) 
        (filename (buffer-file-name))) 
    (if (not (and filename 
                  (file-exists-p filename))) 
        (error 
         "Buffer '%s' is not visiting a file!"
         name) 
      (let ((new-name (read-file-name "New name: " filename))) 
        (cond ((get-buffer new-name) 
               (error 
                "A buffer named '%s' already exists!"
                new-name)) 
              (t (rename-file filename new-name 1) 
                 (rename-buffer new-name) 
                 (set-visited-file-name new-name) 
                 (set-buffer-modified-p nil) 
                 (message "File '%s' successfully renamed to '%s'" name
                          (file-name-nondirectory new-name))))))))

(defun delete-current-buffer-file () 
  "Removes file connected to current buffer and kills buffer." 
  (interactive) 
  (let ((filename (buffer-file-name)) 
        (buffer (current-buffer)) 
        (name (buffer-name))) 
    (if (not (and filename 
                  (file-exists-p filename))) 
        (ido-kill-buffer) 
      (when (yes-or-no-p "Are you sure you want to remove this file? ") 
        (delete-file filename) 
        (kill-buffer buffer) 
        (message "File '%s' successfully removed" filename)))))

(defun find-or-create-file-at-point ()
  "Guesses what parts of the buffer under point is a file name and opens it."
  (interactive)
  (find-file (file-name-at-point)))

(defun find-or-create-file-at-point-other-window ()
  "Guesses what parts of the buffer under point is a file name and opens it."
  (interactive)
  (find-file-other-window (file-name-at-point)))

(defun file-name-at-point ()
  (save-excursion
    (let* ((file-name-regexp "[./a-zA-Z0-9\-_~]")
           (start (progn
                    (while (looking-back file-name-regexp)
                      (forward-char -1))
                    (point)))
           (end (progn
                  (while (looking-at file-name-regexp)
                    (forward-char 1))
                  (point))))
      (buffer-substring start end))))

(defadvice dired-find-file (around dired-find-file-single-buffer activate)
  "Replace current buffer if file is a directory."
  (interactive)
  (let ((orig (current-buffer))
        (filename (dired-get-file-for-visit)))
    ad-do-it
    (when (and (file-directory-p filename)
               (not (eq (current-buffer) orig)))
      (kill-buffer orig))))

(defadvice dired-up-directory (around dired-up-directory-single-buffer activate)
  "Replace current buffer if file is a directory."
  (interactive)
  (let ((orig (current-buffer)))
    ad-do-it
    (kill-buffer orig)))

(defun recentf-ido-find-file () "Find a recent file using ido." 
  (interactive) 
  (let ((file (ido-completing-read "Choose recent file: " recentf-list nil t))) 
    (when file 
      (find-file file))))
