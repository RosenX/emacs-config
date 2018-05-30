(package-initialize)

(add-to-list 'load-path "~/.emacs.d/config/")

;; package management
;;-------------------------------------------------------------------------
(require 'init-packages)

;; ui management
;;-------------------------------------------------------------------------
(require 'init-ui)

;; default switch
;;-------------------------------------------------------------------------
(require 'init-better-defaults)

;; keybinding management
;;-------------------------------------------------------------------------
(require 'init-keybindings)

;; org management
(require 'init-org)

(setq custom-file (expand-file-name "config/custom.el" user-emacs-directory))
(load-file custom-file)

(put 'dired-find-alternate-file 'disabled nil)
