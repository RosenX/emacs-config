;; 样式初始化

(tool-bar-mode -1)
(menu-bar-mode -1)

;; 关闭滑轮
(scroll-bar-mode -1)

;; 显示行号
(global-linum-mode 1)
(setq linum-format "%3d|")  ;set format

;; 更改光标样式
(setq-default cursor-type 'bar)

;; 关闭启动帮助画面
(setq inhibit-splash-screen 1)

;; 关闭缩进
(electric-indent-mode -1)

;; 更改显示字体大小 16pt
(set-face-attribute 'default nil :height 160)

(provide 'init-ui)
