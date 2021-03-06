;;; init-company.el --- Completion with company -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; WAITING: haskell-mode sets tags-table-list globally, breaks tags-completion-at-point-function
;; TODO Default sort order should place [a-z] before punctuation

(setq tab-always-indent 'complete)
(add-to-list 'completion-styles 'initials t)

(when (maybe-require-package 'company)
  (add-hook 'after-init-hook 'global-company-mode)
  (after-load 'company
    (dolist (backend '(company-eclim company-semantic))
      (delq backend company-backends))
    (diminish 'company-mode)
    
    (define-key company-mode-map (kbd "M-/") 'company-complete)
    (define-key company-mode-map (kbd "<tab>") 'company-complete-common)

    (define-key company-active-map (kbd "M-/") 'company-other-backend)
    (define-key company-active-map (kbd "C-n") 'company-select-next)
    (define-key company-active-map (kbd "C-p") 'company-select-previous)
    (define-key company-active-map (kbd "C-s") 'company-filter-candidates)
    (setq-default company-dabbrev-other-buffers 'all
                  company-tooltip-align-annotations t))
  (global-set-key (kbd "M-C-/") 'company-complete)
  ;; (when (maybe-require-package 'company-quickhelp)
  ;;   (add-hook 'after-init-hook 'company-quickhelp-mode))
  )

;; Suspend page-break-lines-mode while company menu is active
;; (see https://github.com/company-mode/company-mode/issues/416)
(after-load 'company
  (after-load 'page-break-lines
    (defvar-local sanityinc/page-break-lines-on-p nil)

    (defun sanityinc/page-break-lines-disable (&rest ignore)
      (when (setq sanityinc/page-break-lines-on-p (bound-and-true-p page-break-lines-mode))
        (page-break-lines-mode -1)))

    (defun sanityinc/page-break-lines-maybe-reenable (&rest ignore)
      (when sanityinc/page-break-lines-on-p
        (page-break-lines-mode 1)))

    (add-hook 'company-completion-started-hook 'sanityinc/page-break-lines-disable)
    (add-hook 'company-after-completion-hook 'sanityinc/page-break-lines-maybe-reenable)))



;; (use-package company
;;   :config
;;   (global-company-mode 1)

;;   (bind-key* "C-s" 'company-filter-candidates company-active-map)
;;   (bind-key* "[TAB]" 'company-complete-common)
  
;;   (use-package company-flx)
;;   (with-eval-after-load 'company
;;       (add-hook 'company-mode-hook (lambda ()
;;                                      (add-to-list 'company-backends 'company-capf)))
;;       (company-flx-mode +1)))


;; (provide 'init-company)


(provide 'init-company)
;;; init-company.el ends here
