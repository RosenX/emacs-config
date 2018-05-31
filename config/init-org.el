;; Agenda

(setq org-src-fontify-natively t)
(setq org-agenda-files '("~/Documents/Agenda"))
(setq org-agenda-file-note '("~/Documents/Org/notes.org"))

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/.emacs.d/gtd.org" "工作安排")
         "* TODO [#B] %?\n  %i\n"
         :empty-lines 1)
	("c" "Chrome" entry (file+headline "~/.emacs.d/notes.org" "Quick notes")
               "* TODO [#C] %?\n %(retrieve-chrome-current-tab-url)\n %i\n %U"
               :empty-lines 1))
      )

(provide 'init-org)
