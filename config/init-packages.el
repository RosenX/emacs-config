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
		s
		helm-ag
		flycheck
		window-numbering
		;; program
		yasnippet
		auto-yasnippet
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


;; smartparens
(require 'smartparens-config)
(smartparens-global-mode t)
(sp-local-pair 'emacs-lisp-mode "'" nil :actions nil)
(sp-local-pair 'lisp-interaction-mode "'" nil :actions nil)

;; let emacs could find the excuable
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; expand region
(require 'expand-region)


;; popwin
(require 'popwin)
(popwin-mode 1)

;; s
(require 's)

;; flycheck
(global-flycheck-mode t)

;; yasnippet
(require 'yasnippet)
(yas-reload-all)
(add-hook 'prog-mode-hook #'yas-minor-mode)

;; window-numbering
(window-numbering-mode 1)




(provide 'init-packages)
