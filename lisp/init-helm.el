
(use-package helm
  :config
  (require 'helm-config)
  (helm-mode 1)

  (bind-key "<tab>" 'helm-execute-persistent-action helm-map)
  (bind-key "C-i" 'helm-execute-persistent-action helm-map)
  (bind-key "<esc>" 'helm-select-action helm-map)

  ;; (setq helm-grep-ag-command "pt /e /S /color /hidden /nogroup %s %s %s")

  :bind* (("M-x" . helm-M-x)
          ("C-V" . helm-show-kill-ring)
          ("C-x C-f" . helm-find-files)
          ("C-<tab>" . helm-mini)
          ("M-r" . helm-semantic-or-imenu)))


(use-package helm-projectile
  :init
  (setq projectile-completion-system 'helm)
  (setq projectile-indexing-method 'alien)
  (setq projectile-switch-project-action 'helm-projectile)
  ;; (setq projectile-keymap-prefix (kbd "M-p"))
  :config
  (projectile-mode 1)
  (helm-projectile-on)
  :bind* (("M-p" . helm-projectile-find-file)
          ("M-P" . helm-projectile-switch-project)))


(use-package helm-ag
  :commands helm-projectile-ag
  :bind* ("M-F" . helm-projectile-ag))


(provide 'init-helm)
