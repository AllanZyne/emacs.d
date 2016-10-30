
(setq visible-bell 1)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(dolist (keys '("C-<mouse-1>" "C-<down-mouse-1>"))
  (global-set-key (kbd keys) 'ignore))
;(global-unset-key (kbd "C-<down-mouse-1>"))
;(global-set-key (kbd "C-<down-mouse-1>") 'ignore)

(defconst cache-directory (concat user-emacs-directory ".cache/"))

(setq desktop-dirname cache-directory)
(setq desktop-save t)
(desktop-save-mode 1)

(defconst backup-directory (concat cache-directory "auto-save/"))
(setq backup-directory-alist `((".*" . ,backup-directory)))
(setq auto-save-file-name-transforms `((".*" ,backup-directory t)))

(use-package chinese-fonts-setup
  :config
  (chinese-fonts-setup-enable))

;(load-theme 'deeper-blue)
(use-package spacemacs-theme)
(setq spacemacs-theme-comment-bg nil)
(load-theme 'spacemacs-dark t)

(setq custom-file (concat user-lisp-directory "init-custom.el"))
(load custom-file)


(provide 'init-emacs)
