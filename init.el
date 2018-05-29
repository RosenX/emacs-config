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
(put 'dired-find-alternate-file 'disabled nil)
