;;; init.el --- Load the full configuration -*- lexical-binding: t -*-

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'init-benchmarking) ;; Measure startup time

(defconst *spell-check-support-enabled* nil)
(defconst *is-a-mac* (eq system-type 'darwin))

;;----------------------------------------------------------------------------
;; Adjust garbage collection thresholds during startup, and thereafter
;;----------------------------------------------------------------------------
(let ((normal-gc-cons-threshold (* 20 1024 1024))
            (init-gc-cons-threshold (* 128 1024 1024)))
    (setq gc-cons-threshold init-gc-cons-threshold)
      (add-hook 'emacs-startup-hook
		            (lambda () (setq gc-cons-threshold normal-gc-cons-threshold))))

;;----------------------------------------------------------------------------
;; Bootstrap
;;----------------------------------------------------------------------------
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(require 'init-utils)
(require 'init-site-lisp) ;; Must come before elpa, as it may provide package.el
;; Calls (package-initialize)
(require 'init-elpa)      ;; Machinery for installing required packages
(require 'init-path) ;; Set up $PATH

;;----------------------------------------------------------------------------
;; UI
;;----------------------------------------------------------------------------
(require-package 'diminish)
(maybe-require-package 'scratch)
(require-package 'command-log-mode)

(require 'init-frame-hooks)
(require 'init-xterm)
(require 'init-themes)
(require 'init-font)
(require 'init-gui-frames)
(require 'init-buffer)
(require 'init-windows)
;(require 'init-neotree)

;; mini buffer
(require 'init-smex)
(require 'init-ivy)

;;----------------------------------------------------------------------------
;; Common Editing
;;----------------------------------------------------------------------------
(require 'init-company)
(require 'init-whitespace)
(require 'init-editing-utils)

;;----------------------------------------------------------------------------
;; Language
;;----------------------------------------------------------------------------
(require 'init-paredit)
(require 'init-lisp)

(require 'init-coq)

;; programming languages
;(require 'init-haskell)
;(require 'init-javascript)
;(require 'init-web)
;(require 'init-python)
;; (require 'init-cpp)
;(require 'init-markdown)

(when *spell-check-support-enabled*
  (require 'init-spelling))

;;----------------------------------------------------------------------------
;; Allow access from emacsclient
;;----------------------------------------------------------------------------
(add-hook 'after-init-hook
          (lambda ()
            (require 'server)
            (unless (server-running-p)
              (server-start))))

;;----------------------------------------------------------------------------
;; Variables configured via the interactive 'customize' interface
;;----------------------------------------------------------------------------
(when (file-exists-p custom-file)
  (load custom-file))

(provide 'init)

;; Local Variables:
;; coding: utf-8
;; no-byte-compile: t
;; End:
;;; init.el ends here
