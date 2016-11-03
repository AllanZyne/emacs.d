

(defun python-default ()
  (setq tab-width 4))

(add-hook 'python-mode-hook #'python-default)

(use-package anaconda-mode
  :mode "\\.py\\'"
  :config
  (anaconda-mode 1))


(provide 'init-python)
