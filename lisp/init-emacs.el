;;(global-linum-mode t)

; (let (inhibit-message t)
;   (message "Listen to me!"))

;; ui
;;(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; desktop
;; (desktop-save-mode 1)
;; (setq desktop-load-locked-desktop t)
;; (desktop-clear)

;; font
(use-package chinese-fonts-setup
  :config
  (chinese-fonts-setup-enable))

;; theme
;(load-theme 'deeper-blue)
;(use-package spacemacs-theme)
;(setq spacemacs-theme-comment-bg nil)
(package-install 'dracula-theme)
(load-theme 'dracula t)

;; others
(use-package form-feed
  :commands form-feed-mode
  :init
  (add-hook 'help-mode-hook 'form-feed-mode)
  (add-hook 'emacs-lisp-mode-hook 'form-feed-mode)
  :config
  (form-feed-mode 1))

(global-auto-revert-mode)

;; custom
(if (file-exists-p custom-file)
    (load custom-file))


(provide 'init-emacs)
