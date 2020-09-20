;;(package-initialize)

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


;; org management
;;(require 'init-org)

;; useful function
(require 'init-func)


(setq custom-file (expand-file-name "config/custom.el" user-emacs-directory))
(load-file custom-file)

;; keybinding management
;;-------------------------------------------------------------------------
(require 'init-keybindings)

(put 'dired-find-alternate-file 'disabled nil)
