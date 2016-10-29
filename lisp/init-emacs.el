
(load-theme 'deeper-blue)

(setq visible-bell 1)

(defconst backup-directory
  (format "%s/%s/" temporary-file-directory "emacs-backup"))

(setq backup-directory-alist `((".*" . ,backup-directory)))
(setq auto-save-file-name-transforms `((".*" ,backup-directory t)))

(setq custom-file "~/.emacs.d/lisp/init-custom.el")
(load custom-file)

;(add-hook 'kill-emacs-query-functions
;          'custom-prompt-customize-unsaved-options)

(use-package chinese-fonts-setup
;  :disabled t
  :config
  (chinese-fonts-setup-enable))


(provide 'init-emacs)
