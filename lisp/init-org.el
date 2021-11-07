;;; init-org.el --- Org-mode config -*- lexical-binding: t -*-
;;; Commentary:

(maybe-require-package 'org)
(maybe-require-package 'org-bullets)

(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(setq-default system-time-locale "C")   ;;显示英文日历

(setq org-agenda-window-setup 'other-window) ;;固定org-agenda的屏幕

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cr"  'org-refile)
(global-set-key "\C-cb" 'org-iswitchb)
(setq org-M-RET-may-split-line nil)

(setq org-todo-keywords '(
  (sequence "TODO(t!)" "NEXT(n!)" "STARTED(a!)" "WAIT(w@/!)" "OTHERS(o!)" "|" "DONE(d)" "CANCELLED(c)")
))

;; 这边就是为路径赋值
(defvar org-agenda-dir "" "gtd org files location")
  (setq-default org-agenda-dir "d:/我的坚果云/Org-daily")   ;;为了同步需要设置的绝对路劲, 也可相对路劲~/+手动同步
  (setq org-agenda-files (list "d:/我的坚果云/Org-daily/daily.org")) 
  (setq org-agenda-file-note (expand-file-name "notes.org" org-agenda-dir))
  (setq org-agenda-file-task (expand-file-name "task.org" org-agenda-dir))
  (setq org-agenda-file-calendar (expand-file-name "calendar.org" org-agenda-dir))
  (setq org-agenda-file-finished (expand-file-name "finished.org" org-agenda-dir))
  (setq org-agenda-file-canceled (expand-file-name "canceled.org" org-agenda-dir))

;; 添加每次打开时可添加的任务类型
  (setq org-capture-templates
        '(
          ("t" "Todo" entry (file+headline org-agenda-file-task "Work")
           "* TODO [#B] %?\n  %i\n"
           :empty-lines 1)
          ("l" "Tolearn" entry (file+headline org-agenda-file-task "Learning")
           "* TODO [#B] %?\n  %i\n"
           :empty-lines 1)
          ("h" "Toplay" entry (file+headline org-agenda-file-task "Hobbies")
           "* TODO [#C] %?\n  %i\n"
           :empty-lines 1)
          ("o" "Todo_others" entry (file+headline org-agenda-file-task "Others")
           "* TODO [#C] %?\n  %i\n"
           :empty-lines 1)
          ("n" "notes" entry (file+headline org-agenda-file-note "Quick notes")
           "* %?\n  %i\n %U"
           :empty-lines 1)
          ("i" "ideas" entry (file+headline org-agenda-file-note "Quick ideas")
           "* %?\n  %i\n %U"
           :empty-lines 1)
          )
        )

(setq org-refile-targets  '((org-agenda-file-finished :maxlevel . 1)
                             (org-agenda-file-canceled :maxlevel . 1)
                             ))

(setq org-refile-use-outline-path 'file)

(setq org-latex-pdf-process    ;;设置org的latex输出模式
        '(
	  "xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"
	  "xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"
	  "xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"
	  "rm -fr %b.out %b.log %b.tex auto"
	  ))

(setq org-latex-compiler "xelatex")  ;; 设置默认后端为 `xelatex'

(provide 'init-org)
;;; init-org.el ends here
