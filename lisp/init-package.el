(require 'package)

(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
;                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
			 ("melph-offical" . "http://melpa.org/packages/")))

(package-initialize)


(setq use-package-always-ensure t)


(provide 'init-package)
