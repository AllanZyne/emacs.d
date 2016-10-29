;(package-initialize)

(setq gc-cons-threshold 100000000)

;(load-file (concat user-emacs-directory "core/core-load-paths.el"))
(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'init-package)

(require 'init-emacs)
(require 'init-edit)

(require 'init-helm)
(require 'init-company)

(require 'init-javascript)

(require 'server)
(unless (server-running-p) (server-start))
