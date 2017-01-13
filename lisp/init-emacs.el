
;; basic
(setq visible-bell 1)
(defalias 'yes-or-no-p 'y-or-n-p)
(global-linum-mode t)

; (let (inhibit-message t)
;   (message "Listen to me!"))

;; ui
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; desktop
;; (desktop-save-mode 1)
;; (setq desktop-load-locked-desktop t)
;; (desktop-clear)

;; window size
(defun set-frame-size-according-to-resolution ()
  (interactive)
  (if (display-graphic-p)
  (progn
    ;; use 120 char wide window for largeish displays
    ;; and smaller 80 column windows for smaller displays
    ;; pick whatever numbers make sense for you
    (if (> (x-display-pixel-width) 1280)
           (add-to-list 'default-frame-alist (cons 'width 120))
           (add-to-list 'default-frame-alist (cons 'width 80)))
    ;; for the height, subtract a couple hundred pixels
    ;; from the screen height (for panels, menubars and
    ;; whatnot), then divide by the height of a char to
    ;; get the height we want
    (add-to-list 'default-frame-alist 
         (cons 'height (/ (- (x-display-pixel-height) 200)
                             (frame-char-height)))))))

(set-frame-size-according-to-resolution)


;; font
(use-package chinese-fonts-setup
  :config
  (chinese-fonts-setup-enable))

;; theme
;(load-theme 'deeper-blue)
;(use-package spacemacs-theme)
;(setq spacemacs-theme-comment-bg nil)
(load-theme 'dracula t)

;; others
(use-package form-feed
  :commands form-feed-mode
  :init
  (add-hook 'help-mode-hook 'form-feed-mode)
  (add-hook 'emacs-lisp-mode-hook 'form-feed-mode)
  :config
  (form-feed-mode 1))

(global-auto-revert-mode)

;; custom
(load custom-file)


(provide 'init-emacs)
