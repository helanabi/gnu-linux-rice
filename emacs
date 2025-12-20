;;; -*- lexical-binding: t -*-
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes '(modus-vivendi-deuteranopia))
 '(desktop-save-mode t)
 '(fringe-mode '(5 . 0) nil (fringe))
 '(menu-bar-mode nil)
 '(save-place-mode t)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Monospace" :height 100)))))

;; Other ui settings
(add-to-list 'default-frame-alist '(alpha . (85 . 85)))
(context-menu-mode 1)

;; Misc settings
(setq make-backup-files nil)
