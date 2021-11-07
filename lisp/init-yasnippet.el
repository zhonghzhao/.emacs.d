;;; init-yasnippet.el --- yasnippet的代码片段

(when (maybe-require-package 'yasnippet)
(require 'yasnippet)
(yas/global-mode 1)   ;;开启全局yasnippet
)

(provide 'init-yasnippet)
;;; init-yasnippet.el ends here
