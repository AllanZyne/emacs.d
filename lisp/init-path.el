;;; init-path.el --- Set up path to help Emacs find programs  -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; exec-path
(require-package 'exec-path-from-shell)

(after-load 'exec-path-from-shell
  (dolist (var '("SSH_AUTH_SOCK" "SSH_AGENT_PID" "GPG_AGENT_INFO" "LANG" "LC_CTYPE"))
    (add-to-list 'exec-path-from-shell-variables var)))


(when (or (memq window-system '(mac ns x))
          (unless (memq system-type '(ms-dos windows-nt))
            (daemonp)))
  (exec-path-from-shell-initialize))

;; (defconst system-path (getenv "PATH"))
;; (setenv "PATH" (concat "E:/babun-1.2.0/.babun/cygwin/bin;" system-path))
;; ;; (setq exec-path (append exec-path '("E:/babun-1.2.0/.babun/cygwin/bin")))
;; (push "E:/babun-1.2.0/.babun/cygwin/bin" exec-path)

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
;; (setq custom-file (concat user-lisp-directory "init-custom.el"))

(provide 'init-path)
;;; init-path.el ends here