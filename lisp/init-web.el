
(use-package web-mode
  :mode ("\\.html?\\'" "\\.css\\'")
  :config
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 4)
  (setq web-mode-code-indent-offset 4)
  (setq web-mode-enable-current-element-highlight t))

(use-package company-web
  :commands company-web-html
  :init
  (require 'company-web-html))


(provide 'init-web)
