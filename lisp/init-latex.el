;;; init-latex.el --- 处理latex编译文档 -*- lexical-binding: t -*-


;; 以下为LaTeX mode相关设置

(maybe-require-package 'cdlatex)
(maybe-require-package 'auctex)
(maybe-require-package 'auctex-latexmk)

(auctex-latexmk-setup)

;;(setq-default TeX-master nil) ;; 编译时问询主文件名称
(setq TeX-parse-selt t) ;; 对新文件自动解析(usepackage, bibliograph, newtheorem等信息)
;; PDF正向搜索相关设置
(setq TeX-PDF-mode t)
(setq TeX-source-correlate-mode t)
(setq TeX-source-correlate-method 'synctex)
(setq TeX-view-program-list
       '(("SumatraPDF" ("\"C:/Users/Administrator/Downloads/SumatraPDF.exe\" -reuse-instance"
     (mode-io-correlate " -forward-search %b %n -inverse-search \"C:/Program Files/emacs/bin/emacsclientw.exe -n +%%l %%f\"") " %o"))))     ;;注意sumatrapdf和emacs的安装位置
  
(eval-after-load 'tex
    '(progn
       (assq-delete-all 'output-pdf TeX-view-program-selection)
       (add-to-list 'TeX-view-program-selection '(output-pdf "SumatraPDF"))))
      ;; ctrl+shitf 从pdf跳回emacs


(add-hook 'LaTeX-mode-hook
      #'(lambda ()
            (add-to-list 'TeX-command-list '("XeLaTeX" "%`Xelatex --synctex=1%(mode)%' %t" TeX-run-TeX nil t))
            (setq TeX-command-extra-options "-file-line-error -shell-escape")
           (setq TeX-command-default "XeLatex")
             (setq TeX-save-query  nil ) ;; 这一行不用确认保存就开始执行编译；
         ))

(add-hook 'LaTeX-mode-hook
      #'(lambda ()
            (add-to-list 'TeX-command-list '("PdflaTeX" "%`Pdflatex --synctex=1%(mode)%' %t" TeX-run-TeX nil t))
            (setq TeX-command-extra-options "-file-line-error -shell-escape")
         ))

(setq TeX-view-program-selection '(((output-dvi style-pstricks) "dvips and start") (output-dvi "Yap") (output-pdf "SumatraPDF") (output-html "start"))) 
(setq TeX-output-view-style '(("^dvi$" "^pstricks$\\|^pst-\\|^psfrag$" "dvips %d -o && start \"\" %f") ("^dvi$" "." "yap -1 %dS %d") ("^pdf$" "." "C:/Users/Administrator/Downloads/SumatraPDF.exe -reuse-instance \"\" %o") ("^html?$" "." "start \"\" %o"))) ;;注意sumatrapdf的安装位置

(setq TeX-source-correlate-start-server t)   ;; 相当关键, pdf调回的成败在此一句 

(add-hook 'LaTeX-mode-hook
      (lambda () (local-set-key (kbd "<S-mouse-3>") #'TeX-view)) ;shift+鼠标右键
    )

;; 打开TeX文件时应该加载的mode/执行的命令
(defun my-latex-hook ()
 (turn-on-cdlatex) ;; 加载cdlatex
 (outline-minor-mode) ;; 加载outline mode
 (turn-on-reftex)  ;; 加载reftex
 (auto-fill-mode)  ;; 加载自动换行
 (TeX-fold-mode t) ;; 加载TeX fold mode
;; (outline-hide-body) ;; 打开文件时只显示章节标题; 
;;(assq-delete-all (quote output-pdf) TeX-view-program-selection)  
  )
(add-hook 'LaTeX-mode-hook 'my-latex-hook)

;; LaTeX mode相关设置完毕


(provide 'init-latex)
;;; init-latex.el ends here
