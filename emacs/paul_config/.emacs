(menu-bar-mode -1)
(set-frame-parameter nil 'undecorated t)

(package-initialize)
(load-theme 'monokai t)

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;;(require 'whitespace)
(setq whitespace-style '(face empty tabs lines-tail trailing tab-mark))
(global-whitespace-mode t)

;; add mouse support
;;(xterm-mouse-mode)

;; Add a "lines" column
(global-linum-mode t)
(setq column-number-mode t)
(setq linum-format "%3d \u2502")
;;(setq linum-format "%d ")

;; Highlights matching parenthesis and brackets
(show-paren-mode 1)

(add-hook 'after-init-hook 'global-company-mode)
;; Always start smartparens mode in js-mode.
(add-hook 'js-mode-hook #'smartparens-mode)

(add-to-list 'load-path "/path/to/autopair")
(require 'autopair)
(autopair-global-mode) ;; enable autopair in all buffers
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (tabbar neotree company-irony company-irony-c-headers company autopair monokai-theme))))
;;
;; Epitech configuration
;;
(add-to-list 'load-path "~/.emacs.d/lisp")
(load "site-start.d/epitech-init.el")
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(add-to-list 'load-path "/some/path/neotree")
(require 'neotree)
(global-set-key [f2] 'neotree-toggle)
