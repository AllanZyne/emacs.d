
(global-unset-key (kbd "M-m"))

(use-package helm
  :config
  (require 'helm-config)
  (helm-mode 1)
  (setq helm-grep-ag-command "pt /e /S /color /hidden /nogroup %s %s %s")
  :bind (("M-x" . helm-M-x)
	 ("M-y" . helm-show-kill-ring)
	 ("C-x C-f" . helm-find-files)
	 ("C-x b" . helm-mini)
	 ("M-m s" . helm-semantic-or-imenu)
	 ("M-m f" . helm-do-grep-ag)
	 ("M-m p" . helm-list-elisp-packages)
	 ("M-m b" . helm-filtered-bookmarks)))


(provide 'init-helm)
