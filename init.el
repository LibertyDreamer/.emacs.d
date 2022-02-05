;;; package --- Summary
;;; Commentary:
;;; Main EMACS settings file, load settings from parts.

;;; Code:
;:Убираем приветственный экран 
(setq inhibit-startup-screen t)

(defun set-user-info (name mail-address)
	"Установить имя пользователя и мыло"
	(interactive "p")
	(setq user-full-name name)
	(setq user-mail-address mail-address))

(set-user-info "Никита" "nikitadotivanov64@gmail.com")

(require 'package)

;;; Источники для установки пакетов. Дело в том, что MELPA Stable
;;; содержит не очень свежие версии, поэтому иногда лучше ставить
;;; пакеты из основного репозитория.
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(add-to-list 'package-archives '("melpa"        . "http://melpa.org/packages/"))


(setq package-enable-at-startup nil)
(package-initialize nil)

;;; Если пакет use-package не установлен, его нужно скачать и
;;; установить
(unless (package-installed-p 'use-package)
  (message "EMACS install use-package.el")
  (package-refresh-contents)
  (package-install 'use-package))

;;; Установили, загрузили, указали, что недостающие пакеты нужно
;;; автоматически загружать и устанавливать.
(require 'use-package)
(setq use-package-always-ensure t)

;;; Части конфигурации. Загрузит все конфигурации-плагины из папки plugins.
(defun load-plugins (list)
  (while list
    (load-file (car list))
    (setq list (cdr list))))

(load-plugins (directory-files ".emacs.d/plugins" t ".el"))

;;; А здесь EMACS хранит настройки, задаваемые через customize
(setq custom-file "~/.emacs.d/customize.el")
(load-file custom-file)

;;Настраиваем экран приветствия
;(add-hook 'emacs-startup-hook 'my-startup-fcn)
;(defun my-startup-fcn ()
;  "do fancy things"
;  (let ((my-buffer (get-buffer-create "my-buffer")))
;    (with-current-buffer my-buffer
      ;; this is what you customize
;      (insert "some stuff\nmore stuff"))
;    (switch-to-buffer my-buffer)))

;;копировать вставить панелька  выключено
(tool-bar-mode 0)
;;файл открыть сохранить панелька  отключен
(menu-bar-mode 0)
;;отображать номера строк в программистском режиме слева
(add-hook 'prog-mode-hook 'linum-mode)
;;установить прозрачност (set-frame-parameter (selected-frame) 'alpha '(<active> . <inactive>)) 
(set-frame-parameter (selected-frame) 'alpha '(95 . 70))

;;; .emacs ends here
