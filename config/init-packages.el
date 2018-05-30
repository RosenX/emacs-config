;; package management


;; set melpa
(when (>= emacs-major-version 24)
     (require 'package)
     (package-initialize)
     (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
		             ("melpa" . "http://elpa.emacs-china.org/melpa/"))))


;; cl - Common Lisp Extension
(require 'cl)

;; recent file
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)

 ;; Add Packages
(defvar my-packages '(
		;; --- Auto-completion ---
		company
		;; --- Better Editor ---
		hungry-delete
		swiper
		counsel
		smartparens
		;; effective interactive
		swiper
		counsel
		exec-path-from-shell
		popwin
		reveal-in-osx-finder
		expand-region
		iedit
		;; Themes
		monokai-theme
		;; major mode
		web-mode
		) "Default packages")

(setq package-selected-packages my-packages)

(defun my-packages-installed-p ()
     (loop for pkg in my-packages
	   when (not (package-installed-p pkg)) do (return nil)
	   finally (return t)))

(unless (my-packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg my-packages)
       (when (not (package-installed-p pkg))
	 (package-install pkg))))

;; swiper
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)

;; smartparens
(require 'smartparens-config)
(smartparens-global-mode t)
(sp-local-pair 'emacs-lisp-mode "'" nil :actions nil)

;; let emacs could find the excuable
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; expand region
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

;; popwin
(require 'popwin)
(popwin-mode 1)

(provide 'init-packages)
