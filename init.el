(setq user-full-name   "Никита")
(setq user-mail-address "nikitadotivanov64@gmail.com")

;;Загрузим и проинициализируем всяческие плагины
(load "~/.emacs.d/packages.el")

;;Загрузка внешнего вида
(load "~/.emacs.d/style.el")

;;Загрузим горячие клавиши
(load "~/.emacs.d/shortcut.el")

;;Загрузим всякие фиксы
(load "~/.emacs.d/bugfix.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(irony-eldoc dracula-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
