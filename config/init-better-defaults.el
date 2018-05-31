;; 初始化设置

;; 关闭备份
(setq make-backup-files nil)

;; 选中输入替换
(delete-selection-mode 1)
 
;; 开启全屏
(setq initial-frame-alist '((fullscreen . maximized)))

;; 括号匹配
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
(define-advice show-paren-function (:around (fn) fix-show-paren-function)
  "Highlight enclosing parens."
  (cond ((looking-at-p "\\s(") (funcall fn))
	(t (save-excursion
	     (ignore-errors (backward-up-list))
	     (funcall fn)))))

;;禁止自动保存
(setq auto-save-default nil)

;; 自动加载修改
(global-auto-revert-mode 1)

;; 将确认改为y,将否定改为n
(fset 'yes-or-no-p 'y-or-n-p)

;; 缩写表
(setq-default abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ("8rs" "Rosen")
))

;; 缩进
(global-company-mode 1)
(setq hippie-expand-try-function-list '(try-expand-debbrev
					try-expand-debbrev-all-buffers
					try-expand-debbrev-from-kill
					try-complete-file-name-partially
					try-complete-file-name
					try-expand-all-abbrevs
					try-expand-list
					try-expand-line
					try-complete-lisp-symbol-partially
					try-complete-lisp-symbol))

;; dired

;; different directory dired in the same buffer
(put 'dired-find-alternate-file 'disable nil)
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)) ;; 延时加载

;; recursive copy and delete don't ask
(setq dired-recursive-copies 'always)
(setq dired-recursive-deletes 'always)

(require 'dired-x)  ;; c-x c-j 打开当前目录
(setq dired-dwim-target 1) ;; 分屏时将在另外窗口打开dired

;; disable audio bell
(setq ring-bell-function 'ignore)


;; remove dos eol
(defun remove-dos-eol()
  "Replace DOS eolns CR LF with Unix eolns CR"
  (interactive)
  (goto-char (point-min))
  (while (search-forward "\r" nil t) (replace-match "")))

;; occur
(defun occur-dwim ()
  "Call `occur' with a sane default."
  (interactive)
  (push (if (region-active-p)
            (buffer-substring-no-properties
             (region-beginning)
             (region-end))
          (let ((sym (thing-at-point 'symbol)))
            (when (stringp sym)
              (regexp-quote sym))))
        regexp-history)
  (call-interactively 'occur))


;; major mode
(setq auto-mode-alist
      (append
       '(("\\.html\\'" . web-mode))
       auto-mode-alist))

(set-language-environment "UTF-8")

(provide 'init-better-defaults)
