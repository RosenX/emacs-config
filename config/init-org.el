;; Agenda

(setq org-src-fontify-natively t)
(setq org-agenda-files '("~/Documents/Org/Agenda"))

(setq org-cycle-separator-lines 0)
(setq org-catch-invisible-edits "error")
(setq org-startup-with-inline-images t)
(setq org-support-shift-select t)

;; (setq org-list-indent-offset 2)

;; (setq org-capture-templates
;;       '(("t" "Todo" entry (file+headline "~/.emacs.d/gtd.org" "工作安排")
;;          "* TODO [#B] %?\n  %i\n"
;;          :empty-lines 1)
;; 	("c" "Chrome" entry (file+headline "~/.emacs.d/notes.org" "Quick notes")
;;                "* TODO [#C] %?\n %(retrieve-chrome-current-tab-url)\n %i\n %U"
;;                :empty-lines 1))
;;       )

(setq org-capture-templates
       '(("t" "Todo" entry (file+headline "~/NutCloud/Org/gtd.org" "Tasks")
              "* TODO %?\n  %i\n  %a")
         ("j" "Journal" entry (file+olp+datetree "~/NutCloud/Org/journal.org")
          "* %?\nEntered on %U\n  %i\n  %a")))

(setq org-agenda-include-diary t)


;; (setq org-todo-keywords
      ;; '((sequence "TODO" "FEEDBACK" "VERIFY" "|" "DONE" "DELEGATED")))

;; (setq org-todo-keywords
      ;; '((type "Fred" "Sara" "Lucy" "|" "DONE")))

;; 子项目都DONE父项目才能DONE
;;(setq org-enforce-todo-dependencies t)
;;子项目所有的checkbox都勾了才能done
;; (setq org-enforce-todo-checkbox-dependencies t)

;; 项目结束记录时间
;; (setq org-log-done 'time)
;; (setq org-closed-keep-when-no-todo t)
;; 项目结束记录点啥
;; (setq org-log-done 'note)
;; 将项目记录插入drawer
(setq org-log-into-drawer t)


(setq org-todo-keywords
    '((sequence "TODO(t!)" "|" "DONE(d@!)")
      (sequence "|" "CANCELED(c@!)")))


(setq org-todo-keyword-faces
    '(("TODO" . org-warning)
      ("CANCELED" . (:foreground "blue" :weight bold))))


;; (add-to-list 'org-modules 'org-habit)

(setq org-hierarchical-todo-statistics nil)

(provide 'init-org)
