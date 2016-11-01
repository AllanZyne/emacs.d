
;; basic
(setq visible-bell 1)
(defalias 'yes-or-no-p 'y-or-n-p)

;; ui
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; desktop
(desktop-save-mode 1)
(setq dektop-globals-to-save '())

;; font
(use-package chinese-fonts-setup
  :config
  (chinese-fonts-setup-enable))

;; theme
;(load-theme 'deeper-blue)
(use-package spacemacs-theme)
(setq spacemacs-theme-comment-bg nil)
(load-theme 'spacemacs-dark t)

;; others
(use-package form-feed
  :commands form-feed-mode
  :init
  (add-hook 'help-mode-hook 'form-feed-mode)
  (add-hook 'emacs-lisp-mode-hook 'form-feed-mode)
  :config
  (form-feed-mode 1))

(global-auto-revert-mode 1)

;; custom
(load custom-file)


(provide 'init-emacs)
