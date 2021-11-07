;;; init-asymptote.el --- ;; 设置运行asymptote软件

(add-to-list 'load-path "C:/Program Files (x86)/Asymptote")   ;;加载本地asymptote软件 
(autoload 'asy-mode "asy-mode.el" "Asymptote major mode." t)  ;;asy-mode.el在texlive中
(autoload 'lasy-mode "asy-mode.el" "hybrid Asymptote/Latex major mode." t)  
(autoload 'asy-insinuate-latex "asy-mode.el" "Asymptote insinuate LaTeX." t)
(add-to-list 'auto-mode-alist '("\\.asy$" . asy-mode))

(provide 'init-asymptote)
;;; init-asymptote.el ends here
