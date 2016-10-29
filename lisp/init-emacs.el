
(desktop-save-mode 1)

(setq visible-bell 1)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(global-unset-key (kbd "C-<down-mouse-1>"))

(defconst backup-directory
  (format "%s/%s/" temporary-file-directory "emacs-backup"))

(setq backup-directory-alist `((".*" . ,backup-directory)))
(setq auto-save-file-name-transforms `((".*" ,backup-directory t)))

(use-package chinese-fonts-setup
;  :disabled t
  :config
  (chinese-fonts-setup-enable))

;(load-theme 'deeper-blue)
(use-package spacemacs-theme
  :demand
  :init
  (setq spacemacs-theme-comment-bg nil)
  :config
  (load-theme 'spacemacs-dark))

(setq custom-file "~/.emacs.d/lisp/init-custom.el")
(load custom-file)

;(add-hook 'kill-emacs-query-functions
;          'custom-prompt-customize-unsaved-options)


(provide 'init-emacs)
