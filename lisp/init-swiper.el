;;; init-swiper.el --- 使用swiper代替M-x
;;; Commentary:
;;; Code:

(when (maybe-require-package 'swiper)
(global-set-key(kbd "M-x") 'smex)
(global-set-key(kbd "M-X") 'smex-major-mode-commands)
(global-set-key(kbd "C-c C-c M-x") 'execute-extended-command))


(provide 'init-swiper)
;;; init-swiper.el ends here
