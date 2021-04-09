;Установить переменные user-full-name и user-mail-address
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


