
;;f2打开配置文件
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f2>") 'open-my-init-file)

;;修改光标样式
(setq-default cursor-type 'bar)

;;默认打开全屏
(setq initial-frame-alist (quote ((fullscreen . maximized))))

(global-hl-line-mode t)

;; 更改显示字体大小 12pt
;; http://stackoverflow.com/questions/294664/how-to-set-the-font-size-in-emacs
;;(set-face-attribute 'default nil :height 120)

;;org-mode快捷键
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;;最近打开文件
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

;;charp-mode hook
(defun my-csharp-mode-hook ()
  ;; enable the stuff you want for C# here
  (electric-pair-mode 1))
(add-hook 'csharp-mode-hook 'my-csharp-mode-hook)

;;omnisharp
(add-hook 'csharp-mode-hook 'omnisharp-mode)
(setq omnisharp-server-executable-path "F:/github/omnisharp-server/OmniSharp/bin/Debug/OmniSharp.exe")
;;(setq omnisharp--windows-curl-tmp-file-path "D:/Emacs/home/temp/omnisharp-tmp-file.cs")
(setq omnisharp-debug t)