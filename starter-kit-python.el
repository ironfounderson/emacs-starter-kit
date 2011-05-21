;; pymacs mode
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)


(require 'pymacs)

(eval-after-load 'python
  '(progn
     (pymacs-load "ropemacs" "rope-")))

(provide 'starter-kit-python)
