(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(require 'helm-config)

(setq inhibit-startup-screen t)

(add-to-list 'load-path "~/.emacs.d/build/neotree")
(require 'neotree)
(setq neo-smart-open t)
(setq neo-theme (if (display-graphic-p) 'arrow))
(add-hook 'after-init-hook #'neotree-toggle)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'wombat t)

(tool-bar-mode -1)
(menu-bar-mode -1)
(toggle-scroll-bar -1)

(setq package-enable-at-startup nil)
(package-initialize)

(when window-system (set-frame-size (selected-frame) 170 55))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (rainbow-mode evil-visual-mark-mode))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
