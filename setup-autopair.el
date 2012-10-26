(require 'autopair)

(mapcar #'(lambda (mode)
            (add-hook mode #'(lambda () (autopair-mode))))
        (list 'js-mode-hook
              'c-common-mode-hook
              'c++-mode-hook))

(provide 'setup-autopair)
