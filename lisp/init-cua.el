;;; init-cua.el --- 类似windows复制剪切等操作

(cua-mode t)            ;;进入cua模式  
(setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
(transient-mark-mode 1) ;; No region when it is not highlighted
(setq cua-keep-region-after-copy t) ;; Standard Windows behaviour

(provide 'init-cua)
;;; init-cua.el ends here
