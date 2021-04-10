;;Убрать экран приветствия
(setq inhibit-splash-screen t)

;;копировать вставить панелька  включен
(tool-bar-mode 0)

;;файл открыть сохранить панелька  отключен
(menu-bar-mode 0)

;;отображать номера строк слева
(global-linum-mode 1)

; Установить тему по умолчанию
(load-theme 'spacemacs-dark t)

;;установить прозрачност (set-frame-parameter (selected-frame) 'alpha '(<active> . <inactive>)) ь
;(set-frame-parameter (selected-frame) 'alpha '(85 . 10))

;;Установить шрифт
(set-frame-font "Fira Code 10" nil t)
