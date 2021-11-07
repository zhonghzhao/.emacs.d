;;; init-undotree.el ----- 显示每次操作的目录树

(when (maybe-require-package 'undo-tree)
(global-undo-tree-mode))

(provide 'init-undotree)
;;; init-undotree.el ends here
