;;; package --- Summar
;;; Commentary:
;;; Code:
;:; Убираем приветственный экран
(setq inhibit-startup-screen t)


(setq-default line-number-mode nil)


;;копировать вставить панелька  отключено
(tool-bar-mode 0)
;;файл открыть сохранить панелька  отключен
(menu-bar-mode 0)
;;отображать номера строк в программистском режиме слева
(add-hook 'prog-mode-hook 'linum-mode)
;;; Установить прозрачност (set-frame-parameter (selected-frame) 'alpha '(<active> . <inactive>))
(set-frame-parameter (selected-frame) 'alpha '(95 . 70))

;;;Настраиваем экран приветствия
;;(add-hook 'emacs-startup-hook 'my-startup-fcn)
;;(defun my-startup-fcn ()
					;  "do fancy things"
					;  (let ((my-buffer (get-buffer-create "my-buffer")))
					;    (with-current-buffer my-buffer
;; this is what you customize
					;      (insert "some stuff\nmore stuff"))
					;    (switch-to-buffer my-buffer)))

;;; my-setting.el ends here
