;;; init-helm.el --- 使用helm的套装

(when (maybe-require-package 'helm)
(maybe-require-package 'helm-org-rifle)
(maybe-require-package 'helm-bibtex)
(maybe-require-package 'helm-org)

(setq bibtex-completion-bibliography  '("D:/Setup/refn.bib"))  ;;bibtex存储位置
(setq bibtex-completion-library-path '("D:/Setup"))


(helm-mode 1)

(autoload 'helm-bibtex "helm-bibtex" "" t)
(global-set-key [f6] 'helm-bibtex))

(provide 'init-helm)
;;; init-helm.el ends here
