
(use-package bind-key)

;; ignore keys
(dolist (keys '("C-<mouse-1>" "C-<down-mouse-1>" "C-z"))
  (global-set-key (kbd keys) 'ignore))

;; http://emacsredux.com/blog/2013/05/22/smarter-navigation-to-the-beginning-of-a-line/
(defun smarter-move-beginning-of-line (arg)
  (interactive "^p")
  (setq arg (or arg 1))

  ;; Move lines first
  (when (/= arg 1)
    (let ((line-move-visual nil))
      (forward-line (1- arg))))

  (let ((orig-point (point)))
    (back-to-indentation)
    (when (= orig-point (point))
      (move-beginning-of-line 1))))

(global-set-key [remap move-beginning-of-line] 'smarter-move-beginning-of-line)


(bind-key "<f1>" 'help-command)
(bind-key "M-h" 'help-command)

(bind-key "C-h" 'delete-backward-char)
(bind-key "C-H" 'backward-kill-word)

(define-key key-translation-map [?\C-h] [?\C-?])

;; comment
(defun comment-or-uncomment-region-or-line ()
    "Comments or uncomments the region or the current line if there's no active region."
    (interactive)
    (let (beg end)
        (if (region-active-p)
            (setq beg (region-beginning) end (region-end))
            (setq beg (line-beginning-position) end (line-end-position)))
        (comment-or-uncomment-region beg end)))

(bind-key* "C-;" 'comment-or-uncomment-region-or-line)

;; move lines
(use-package drag-stuff
  :config (drag-stuff-global-mode 1))

;; parens
(use-package smartparens
  :config
  (require 'smartparens-config)
  (smartparens-global-mode 1)
  (show-smartparens-global-mode 1))

;; (use-package rainbow-delimiters
;;   :config
;;   (global-rainbow-delimiters 1))

;; tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; cursors
(use-package multiple-cursors
  :bind (("C-S-l" . mc/edit-lines)
         ("C->" . mc/mark-next-like-this)
         ("C-<" . mc/mark-previous-like-this)
         ("C-<mouse-1>" . mc/add-cursor-on-click)))

(cua-mode t)


(provide 'init-edit)
