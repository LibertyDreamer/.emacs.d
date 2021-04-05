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

;;Загрузим всякие фиксы
(load "~/.emacs.d/bugfix.el")

