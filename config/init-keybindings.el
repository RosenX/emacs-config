;; key binding

(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

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

;; remember
(global-set-key (kbd "C-c r") 'org-capture)

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

(provide 'init-keybindings)
