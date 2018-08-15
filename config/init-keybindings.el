;; key binding

(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

(global-set-key (kbd "C-M-m") 'set-mark-command)

;; recentf
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

(global-set-key (kbd "C-c p f") 'counsel-git)

(global-set-key (kbd "C-c a") 'org-agenda)

;; company

(with-eval-after-load 'company
  (define-key company-active-map (kbd "C-n") 'company-select-next)
  (define-key company-active-map (kbd "C-p") 'company-select-previous))

;; hippie complete
(global-set-key (kbd "s-/") 'hippie-expand)

(global-set-key (kbd "M-s i") 'counsel-imenu)
(global-set-key (kbd "M-s o") 'occur-dwim)
(global-set-key (kbd "M-s e") 'iedit-mode)

;; org
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c b") 'org-switchb)
(global-set-key (kbd "C-c a") 'org-agenda)

;; swiper
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)

(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)

;; expand-region
(global-set-key (kbd "C-=") 'er/expand-region)

;; helm ag
(global-set-key (kbd "C-c p s") 'helm-do-ag-project-root)

;; evil-nerd-commenter
(global-set-key (kbd "C-.") 'evilnc-comment-or-uncomment-lines)

(provide 'init-keybindings)
