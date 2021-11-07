(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path "~/.emacs.d/site-lisp/")   ;;手动添加的额外宏包
(require 'init-benchmarking) ;; Measure startup time

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))


;;----------------------------------------------------------------------------
;; Bootstrap config  参考purcell的设置
;;----------------------------------------------------------------------------
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(require 'init-utils)  ;; 为加载初始化文件提供一些自定义的函数和宏
(require 'init-site-lisp) ;; Must come before elpa, as it may provide package.el
;; Calls (package-initialize)
(require 'init-elpa)      ;; Machinery for installing required packages, 注释fullframe
; ; (require 'init-exec-path) ;; Set up $PATH

;;----------------------------------------------------------------------------
;; Load configs for specific features and modes
;;----------------------------------------------------------------------------

(require 'init-asymptote)     ;;注意asymptote的安装位置和asy-mode.el文件
(require 'init-helm)          ;;注意helm-bibtex使用的存储位置
;;(require 'init-ivy)         ;;注意bibtex使用的存储位置
(require 'init-latex)         ;;注意emacs和SumatraPDF的安装路径,删除官方下载的cdlatex.el,改用site-lisp中修改后的.
(require 'init-org)           ;;注意org-directory中org文件的存储路劲, 不添加无法在agenda中显示 
;;以上配置和存储位置有关

;;(require 'init-awesometab)   ;;显示文档抬头
;;(require 'init-cua)           ;;进入cua模式
(require 'init-company)       ;;注释(diminish 'company-mode)
(require 'init-editing)        ;;全局的设置
(require 'init-evil)
(require 'init-general)
;;(require 'init-git)
(require 'init-neotree)       ;;显示当前文件夹文件
(require 'init-owncustomize)  ;;细化latex的的设置
;;(require 'init-python)
(require 'init-smex)
(require 'init-swiper)
(require 'init-themes)
(require 'init-undotree)      ;;显示撤销的树形图
(require 'init-whichkey)      ;;快捷键提示
(require 'init-winum)         ;;winum模式
(require 'init-yasnippet)
(require 'init-ztemp)         ;;临时配置管理

;;----------------------------------------------------------------------------
;; Allow users to provide an optional "init-local" containing personal settings
;;----------------------------------------------------------------------------
;(require 'init-local nil t)

(provide 'init)

;; Local Variables:
;; coding: utf-8
;; no-byte-compile: t
;; End:
;;; init.el ends here