;;; package --- Summar
;;; Commentary:
;;; Code:
;:; Убираем приветственный экран
;;(setq inhibit-startup-screen t)


(setq-default global-line-number-mode nil)
;;отображать номера строк в программистском режиме слева
(add-hook 'prog-mode-hook 'linum-mode)

;;копировать вставить панелька  отключено
(tool-bar-mode 0)
;;файл открыть сохранить панелька  отключен
(menu-bar-mode 0)
;; Скрыть скроллбар
(scroll-bar-mode -1)

;;; Установить прозрачност (set-frame-parameter (selected-frame) 'alpha '(<active> . <inactive>))
(set-frame-parameter (selected-frame) 'alpha '(95 . 70))
                                                                            
;; Удалять выделенный текст при начале письма как во всех остальных редакторах
(delete-selection-mode 1)

;; перенос по словам
(global-visual-line-mode 1)

;;; Что бы команды ботали и на русском
(defun reverse-input-method (input-method)
  "Build the reverse mapping of single letters from INPUT-METHOD."
  (interactive
   (list (read-input-method-name "Use input method (default current): ")))
  (if (and input-method (symbolp input-method))
      (setq input-method (symbol-name input-method)))
  (let ((current current-input-method)
        (modifiers '(nil (control) (meta) (control meta))))
    (when input-method
      (activate-input-method input-method))
    (when (and current-input-method quail-keyboard-layout)
      (dolist (map (cdr (quail-map)))
        (let* ((to (car map))
               (from (quail-get-translation
                      (cadr map) (char-to-string to) 1)))
          (when (and (characterp from) (characterp to))
            (dolist (mod modifiers)
              (define-key local-function-key-map
                (vector (append mod (list from)))
                (vector (append mod (list to)))))))))
    (when input-method
      (activate-input-method current))))

(reverse-input-method "russian-computer")
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
