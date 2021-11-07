;;; init-neotree.el --- 查看文档所在的文件夹

(when (maybe-require-package 'neotree)
(add-to-list 'load-path "/some/path/neotree")
(global-set-key [f8] 'neotree-toggle))


(provide 'init-neotree)
;;; init-neotree.el ends here
