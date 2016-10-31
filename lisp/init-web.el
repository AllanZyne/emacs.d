
(use-package web-mode
  :mode ("\\.html?\\'" "\\.css\\'")
  :config
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 4)
  (setq web-mode-code-indent-offset 4)
  (setq web-mode-enable-current-element-highlight t))

;; (use-package company-web
;;   :commands company-web-html
;;   :init
;;   (add-hook 'web-mode-hook
;;             (lambda ()
;;               (set (make-local-variable 'company-backends)
;;                    '(company-web-html)))))


(provide 'init-web)
