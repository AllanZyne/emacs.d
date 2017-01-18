(require 'package)

(setq package-archives '(("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ;("melpa-cn" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
                         ;("melpa-stable" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa-stable/")
                         ("melpa" . "http://melpa.org/packages/")
                         ))

(setq url-proxy-services
   '(("no_proxy" . "^\\(localhost\\|10.*|mirrors\\.tuna\\..*\\)")
     ("http" . "127.0.0.1:1080")
     ("https" . "127.0.0.1:1080")))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(package-install 'use-package)
(setq use-package-always-ensure t)

(setq paradox-github-token '189ccec763126dfbc333775ff96d1f6601be650a)


(provide 'init-package)
