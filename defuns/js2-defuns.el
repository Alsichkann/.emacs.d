(defun js2r--closest-node-where (p node)
  (if (or (null node)
          (apply p node nil))
      node
    (js2r--closest-node-where p (js2-node-parent node))))

(defun js2r--closest (p)
  (save-excursion
    (cond
     ((bolp) (back-to-indentation))
     ((looking-at ";") (forward-char -1))
     ((looking-back ";") (forward-char -2)))
    (js2r--closest-node-where p (js2-node-at-point))))
