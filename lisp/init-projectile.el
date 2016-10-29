
(use-package helm-projectile
  :config
  (projectile-global-mode)
  (setq projectile-completion-system 'helm)
  (setq projectile-indexing-method 'alien)
  (helm-projectile-on))


(provide 'init-projectile)
