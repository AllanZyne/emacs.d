;;; init-coq.el --- Proof General -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require-package 'proof-general)
(require-package 'company-coq)
(diminish 'company-coq-mode)

(after-load 'coq-mode
  (add-hook 'coq-mode-hook 'company-coq-mode)
  ;; (unicode-tokens-mode -1)
  (setq coq-compile-before-require t)
  ;; key bindings
  (define-key coq-mode-map (kbd "M-<up>") 'proof-undo-last-successful-command)
  (define-key coq-mode-map (kbd "M-<down>") 'proof-assert-next-command-interactive)
  (define-key coq-mode-map (kbd "M-<right>") 'proof-goto-point)

  (define-key coq-mode-map (kbd "M-p") 'proof-undo-last-successful-command)
  (define-key coq-mode-map (kbd "M-n") 'proof-assert-next-command-interactive)
  (define-key coq-mode-map (kbd "M-l") 'proof-goto-point)

  (define-key coq-mode-map (kbd "C-M-p") 'coq-Print)
  (define-key coq-mode-map (kbd "C-M-c") 'coq-Check)
  (define-key coq-mode-map (kbd "C-M-k") 'coq-SearchAbout)
  (define-key coq-mode-map (kbd "C-M-l") 'coq-LocateNotation)
  ;; Math fonts
  (set-fontset-font t 'unicode (font-spec :name "XITS Math-13:bold") nil 'prepend)
  (set-fontset-font t 'greek (font-spec :name "DejaVu sans Mono-13:bold") nil 'prepend))

(after-load 'company-coq-mode
  (setq company-coq-disabled-features '(hello keybindings prettify-symbols)))

(provide 'init-coq)
;;; init-coq.el ends here
