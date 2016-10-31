
(global-unset-key (kbd "M-m"))

(use-package helm
  :init
  :config
  (require 'helm-config)
  (helm-mode 1)
  (setq helm-grep-ag-command "pt /e /S /color /hidden /nogroup %s %s %s")
  (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
  (define-key helm-map (kbd "C-i") 'helm-execute-persistent-action)
  (define-key helm-map (kbd "<esc>") 'helm-select-action)
  ;(define-key helm-map (kbd "<backspace>") 'helm-find-files-up-one-level)
  ;(define-key helm-map (kbd "C-j") 'helm-next-line)
  ;(define-key helm-map (kbd "C-k") 'helm-previous-line)
  :bind (("M-x" . helm-M-x)
	 ("M-y" . helm-show-kill-ring)
	 ("C-x C-f" . helm-find-files)
	 ("C-x b" . helm-mini)
	 ("M-m o" . helm-semantic-or-imenu)
	 ("M-m a" . helm-do-grep-ag)
	 ("M-m p" . helm-list-elisp-packages)
	 ("M-m b" . helm-filtered-bookmarks)))

(use-package helm-pt
  :commands helm-projetile-pt)

(global-unset-key (kbd "M-o"))

(use-package helm-projectile
  :init
  (setq projectile-completion-system 'helm)
  (setq projectile-indexing-method 'alien)
  ;; (setq projectile-switch-project-action 'helm-projectile)
  (setq projectile-keymap-prefix (kbd "M-p")))
  :config
  (projectile-global-mode)
  (helm-projectile-on)
  ;; (setq projectile-enable-caching t)
  ;; :bind (("M-p p" . helm-projectile-switch-project)
  ;; 	 ("M-p f" . helm-projectile-find-file)
  ;; 	 ("M-p F" . helm-projectile-find-file-in-known-projects)
  ;; 	 ("M-p g" . helm-projectile-find-file-dwim)
  ;; 	 ("M-p d" . helm-projectile-find-dir)
  ;; 	 ("M-p r" . helm-projectile-recentf)
  ;; 	 ("M-o"   . helm-projectile-find-other-file)
  ;; 	 ("M-p b" . helm-projectile-switch-to-buffer)
  ;; 	 ("M-p s" . helm-projectile-pt)))


(provide 'init-helm)
