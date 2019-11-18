;;; init-coq.el --- Proof General -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require-package 'proof-general)

(after-load 'coq-mode
  ;; (unicode-tokens-mode -1)
  (setq coq-compile-before-require t)
  (define-key coq-mode-map (kbd "M-<up>") 'proof-undo-last-successful-command)
  (define-key coq-mode-map (kbd "M-<down>") 'proof-assert-next-command-interactive)
  (define-key coq-mode-map (kbd "M-<right>") 'proof-goto-point)
  (define-key coq-mode-map (kbd "M-p") 'coq-Print)
  (define-key coq-mode-map (kbd "M-c") 'coq-Check)
  (define-key coq-mode-map (kbd "M-k") 'coq-SearchAbout)
  (define-key coq-mode-map (kbd "M-l") 'coq-LocateNotation))

(require-package 'company-coq)

(after-load 'company-coq
  (add-hook 'coq-mode-hook #'company-coq-mode)
  (setq company-coq-disabled-features '(hello)))

(provide 'init-coq)
;;; init-csv.el ends here
