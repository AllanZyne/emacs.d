;;; init-coq.el --- Proof General -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require-package 'proof-general)

(after-load 'coq-mode
  (setq coq-compile-before-require t)
  (define-key coq-mode-map (kbd "M-<down>") 'proof-assert-next-command-interactive)
  (define-key coq-mode-map (kbd "M-<right>") 'proof-goto-point))


(provide 'init-coq)
;;; init-csv.el ends here
