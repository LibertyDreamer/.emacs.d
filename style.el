;;Убрать экран приветствия
(setq inhibit-splash-screen t)

;;копировать вставить панелька  выключено
(tool-bar-mode 0)

;;файл открыть сохранить панелька  отключен
(menu-bar-mode 0)

;;отображать номера строк слева
(global-linum-mode 1)

;;установить прозрачност (set-frame-parameter (selected-frame) 'alpha '(<active> . <inactive>)) ь
;(set-frame-parameter (selected-frame) 'alpha '(85 . 10))

; Загрузить тему дракула
(load-theme 'dracula t)
