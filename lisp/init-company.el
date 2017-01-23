
(use-package company
  :config
  (global-company-mode 1)

  (bind-key* "C-s" 'company-filter-candidates company-active-map)
  (bind-key* "[TAB]" 'company-complete-common)
  
  (use-package company-flx)
  (with-eval-after-load 'company
      (add-hook 'company-mode-hook (lambda ()
                                     (add-to-list 'company-backends 'company-capf)))
      (company-flx-mode +1)))


(provide 'init-company)
