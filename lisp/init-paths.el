
;; load-path
(defconst user-lisp-directory (concat user-emacs-directory "lisp/"))
(add-to-list 'load-path user-lisp-directory)

;; exec-path
(defconst system-path (getenv "PATH"))
(setenv "PATH" (concat system-path ";E:/babun-1.2.0/.babun/cygwin/bin"))
(setq exec-path (append exec-path '("E:/babun-1.2.0/.babun/cygwin/bin")))

;; cache
(defconst cache-directory (concat user-emacs-directory ".cache/"))

;; desktop
(setq desktop-path '("~/.emacs.d/.cache/"))
(setq desktop-dirname cache-directory)

;; backup
(defconst backup-directory (concat cache-directory "auto-save/"))
(setq backup-directory-alist `((".*" . ,backup-directory)))
(setq auto-save-file-name-transforms `((".*" ,backup-directory t)))

;; custom
(setq custom-file (concat user-lisp-directory "init-custom.el"))


(provide 'init-path)
