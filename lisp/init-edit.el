
(use-package bind-key)

;; ignore keys
(dolist (keys '("C-<mouse-1>" "C-<down-mouse-1>"))
  (global-set-key (kbd keys) 'ignore))

(bind-key "C-a" 'back-to-indentation)

(bind-key "<f1>" 'help-command)
(bind-key "M-h" 'help-command)

(bind-key "C-h" 'delete-backward-char)
(bind-key "C-H" 'backward-kill-word)

(define-key key-translation-map [?\C-h] [?\C-?])

;; move lines
(use-package drag-stuff
  :config (drag-stuff-global-mode 1))

;; parens
(use-package smartparens
  :config
  (require 'smartparens-config)
  (smartparens-global-mode 1)
  (show-smartparens-global-mode 1))

;; (use-package rainbow-delimiters
;;   :config
;;   (global-rainbow-delimiters 1))

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

(use-package multiple-cursors
  :bind (("C-L" . mc/edit-lines)
         ("C->" . mc/mark-next-like-this)
         ("C-<" . mc/mark-previous-like-this)
         ("C-<mouse-1>" . mc/add-cursor-on-click)))


(provide 'init-edit)
