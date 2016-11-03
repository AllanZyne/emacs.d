
(global-unset-key (kbd "M-m"))

(use-package helm
  :config
  (require 'helm-config)
  (helm-mode 1)

  (setq helm-grep-ag-command "pt /e /S /color /hidden /nogroup %s %s %s")

  (bind-key "M-x" 'helm-M-x)
  (bind-key "M-y" 'helm-show-kill-ring)
  (bind-key "C-x C-f" 'helm-find-files)
  (bind-key "C-x b" 'helm-mini)
  (bind-key "M-m o" 'helm-semantic-or-imenu)
  (bind-key "M-m a" 'helm-do-grep-ag)
  (bind-key "M-m p" 'helm-list-elisp-packages)
  (bind-key "M-m b" 'helm-filtered-bookmarks)

  (bind-key "<tab>" 'helm-execute-persistent-action helm-map)
  (bind-key "C-i" 'helm-execute-persistent-action helm-map)
  (bind-key "<esc>" 'helm-select-action helm-map))

(use-package helm-pt
  :commands helm-projetile-pt)

;; (global-unset-key (kbd "M-o"))

(use-package helm-projectile
  :init
  (setq projectile-completion-system 'helm)
  (setq projectile-indexing-method 'alien)
  ;; (setq projectile-switch-project-action 'helm-projectile)
  (setq projectile-keymap-prefix (kbd "M-p"))
  :config
  (projectile-mode 1)
  (bind-key* "M-p s" 'helm-projectile-pt)
  (helm-projectile-on))


(provide 'init-helm)
