;Установить переменные user-full-name и user-mail-address
(setq user-full-name   "Никита")
(setq user-mail-address "nikitadotivanov64@gmail.com")

;;Загрузим и проинициализируем всяческие плагины
(load "~/.emacs.d/packages.el")

;;Загрузка внешнего вида
(load "~/.emacs.d/style.el")

;; Add pdf reader надо будет заменить ЭТО ДНО.
;;(setq doc-view-ghostscript-program "C:/Program Files/gs/gs9.52/bin/gswin64.exe")

;;Загрузим горячие клавиши
(load "~/.emacs.d/shortcut.el")

;; Используем вместо приветствия рандомные комиксы xkcd
(xkcd)
(xkcd-rand)
;;(switch-to-buffer *XKCD*)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(neotree xkcd telega spacemacs-theme nyan-mode helm google-translate)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
