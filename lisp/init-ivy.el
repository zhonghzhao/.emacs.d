;;; init-ivy.el --- Use ivy for minibuffer completion and more -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(when (maybe-require-package 'ivy)
(maybe-require-package 'ivy-bibtex)

(setq bibtex-completion-bibliography '("D:/Setup/refn.bib"))  ;;bibtex存储位置
(setq bibtex-completion-library-path '("D:/Setup"))

(ivy-mode 1)             ;;开启全局ivy
)


(provide 'init-ivy)
;;; init-ivy.el ends here
