;;; init-ztemp.el --- 临时使用插件

(when (maybe-require-package 'use-package)  ;;插件安装包
  (package-refresh-contents))
  
  
; (use-package company
  ; :bind (:map company-active-map
         ; ("C-n" . company-select-next)
         ; ("C-p" . company-select-previous))
  ; :config
  ; (setq company-idle-delay 0.3)
  ; (global-company-mode t))
  
; (use-package magit
  ; :ensure t
  ; :bind ("C-x g" . magit-status))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(maybe-require-package 'keyfreq)   ;;keyfreq按键记录
(keyfreq-mode 1)
(keyfreq-autosave-mode 1)



(provide 'init-ztemp)
;;; init-ztemp.el ends here