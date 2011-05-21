(server-start)

;; my keybindings

(add-hook 'c-mode-common-hook
  (lambda() 
    (local-set-key  (kbd "C-c o") 'ff-find-other-file)))

;; By binding to C-x C-m to M-x it can be invoked without moving the
;; fingers from the home row.
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

;; Normally M-del is backward-kill-word but by using C-w the hand
;; doesn't have to move as much. 
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

(add-hook 'outline-mode-hook 
          (lambda () 
            (require 'outline-cycle)))
            
(add-hook 'outline-minor-mode-hook 
          (lambda () 
            (require 'outline-magic)
            (define-key outline-minor-mode-map [(f8)]
          'outline-cycle)))

(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-solarized-dark)))

(setq c-basic-offset 4)
