;;; init-font.el --- Defaults for font -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:


;; (set-frame-font "Source Code Pro 12")
(set-frame-font "Fira Code 12")

;; (dolist (charset '(kana han symbol cjk-misc bopomofo))
;;   (set-fontset-font (frame-parameter nil 'font)
;;                     charset (font-spec :family "Noto Sans CJK SC" :size 16)))

;; (add-to-list 'after-make-frame-functions
;;           (lambda (new-frame)
;;             (select-frame new-frame)
;;                ;; English Font
;;                (set-face-attribute 'default nil :font "FuraCode Nerd Font 12")
;;                ;; Chinese Font
;;                (dolist (charset '(kana han symbol cjk-misc bopomofo))
;;                  (set-fontset-font (frame-parameter nil 'font)
;;                                    charset (font-spec :family "Noto Sans CJK SC" :size 16)))))

;;; Prettify Symbols
(require 'fira-code-mode)
(diminish 'fire-code-mode)

(when (fboundp 'global-prettify-symbols-mode)
  (add-hook 'after-init-hook 'global-prettify-symbols-mode))

(add-hook 'prettify-symbols-mode-hook 'fira-code-mode)


(provide 'init-font)
;;; init-font.el ends here
