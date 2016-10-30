;(package-initialize)

(setq gc-cons-threshold 100000000)

(load-file (concat user-emacs-directory "lisp/init-paths.el"))

(require 'init-package)

(require 'init-emacs)
(require 'init-edit)

(require 'init-helm)
(require 'init-company)

(require 'init-javascript)

(require 'server)
(unless (server-running-p) (server-start))
