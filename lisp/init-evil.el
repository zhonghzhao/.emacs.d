;;; init-evil.el --- 使用evil模式, 模拟vim的使用

(when (maybe-require-package 'evil)
(evil-mode 1)
;;(setq evil-default-state 'emacs)
(setq evil-insert-state-cursor 'bar))
(evil-set-undo-system 'undo-tree)

(provide 'init-evil)
;;; init-evil.el ends here
