;(package-initialize)

(setq gc-cons-threshold 100000000)

; init-paths
(load-file (concat user-emacs-directory "lisp/init-paths.el"))

;; 100% no error!!
(require 'init-prelude)

(require 'init-package)

(require 'init-emacs)
(require 'init-edit)

(require 'init-helm)
(require 'init-company)

(require 'init-neotree)

;; programming languages
(require 'init-haskell)
;; (require 'init-javascript)
;; (require 'init-web)
(require 'init-python)
;; (require 'init-cpp)
(require 'init-markdown)

(require 'server)
(server-start)
