
(defconst user-lisp-directory (concat user-emacs-directory "lisp/"))
(add-to-list 'load-path user-lisp-directory)

(setenv "PATH" (concat (getenv "PATH") ";C:/Program Files/SmartGit/git/bin"))
(setq exec-path (append exec-path '("C:/Program Files/SmartGit/git/bin")))

(provide 'init-path)
