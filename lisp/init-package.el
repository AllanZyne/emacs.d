(require 'package)

(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ;; ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
			 ("melpa" . "http://melpa.org/packages/")))

(package-initialize)

(package-install 'use-package)
(setq use-package-always-ensure t)

(setq paradox-github-token '189ccec763126dfbc333775ff96d1f6601be650a)


(provide 'init-package)
