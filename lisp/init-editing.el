;;; init-editing.el --- ;; 编辑总体的属性设置


(set-terminal-coding-system 'utf-8)  ;; 设置编码
(set-keyboard-coding-system 'utf-8)

(set-fontset-font "fontset-default" 'han "微软雅黑")  ;; 汉字默认字体为Kaiti(楷体)，可改为其它字体

(set-fontset-font "fontset-default" 'symbol "Cambria Math")  ;; 数学符号默认字体为Cambria Math

(setq inhibit-compacting-font-caches t)  ;; 解决显示Unicode字符的卡顿问题

(global-linum-mode t) ;;开启全局侧边显示行号

(electric-pair-mode t)  ;;自动添加括号

(setq-default word-wrap t)  ;; 设置自动分行

; (fset 'yes-or-no-p 'y-or-n-p)  ;; 设置问答为简问答

(setq make-backup-files nil)  ;; 不生成备份文件

(setq auto-save-default nil)  ;; 取消自动保存

(setq frame-title-format "%b  [%I] %f  GNU/Emacs" )  ;;标题显示文件名，而不是默认的username@localhost

(setq visible-bell 0)    ;;去掉错误提示音

; (setq outline-minor-mode-prefix [(control o)]) ;; 设定outline minor mode的前缀快捷键为C-o

;;(global-hl-line-mode 1)  ;;highlight当前行

(setq split-height-threshold nil)    ;;设置左右分屏显示
(setq split-width-threshold 0)

(desktop-save-mode 1)   ;;保持文档

(setq-default cursor-type 'bar)  ;;光标变为竖线

(winner-mode 1)


;; 王垠提供的小工具: 按“%”匹配括号的小程序
(defun match-paren (arg)
  "Go to the matching paren if on a paren; otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
	((looking-at "\\s\)") (forward-char 1) (backward-list 1))
	(t (self-insert-command (or arg 1)))))
(global-set-key "%" 'match-paren)
          
;; Hippie补全，调整自动补全字符串的优先级顺序
(setq hippie-expand-try-functions-list 
      '(try-expand-dabbrev
	try-expand-dabbrev-visible
	try-expand-dabbrev-all-buffers
	try-expand-dabbrev-from-kill
	try-complete-file-name-partially
	try-complete-file-name
	try-expand-all-abbrevs
	try-expand-list
	try-expand-line
	try-complete-lisp-symbol-partially
	try-complete-lisp-symbol))


(provide 'init-editing)
;;; init-editing.el ends here
