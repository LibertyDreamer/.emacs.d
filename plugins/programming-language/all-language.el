;;; Отключить отображение номера строк глобально
;;(setq-default global-line-number-mode nil)

;;отображать номера строк в программистском режиме слева
(add-hook 'prog-mode-hook 'linum-mode)

