
(use-package company
  :config
  (global-company-mode 1)
  (bind-key* "C-s" 'company-filter-candidates company-active-map))


(provide 'init-company)
