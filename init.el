;;; package --- Summary
;;; Commentary:
;;; Main EMACS settings file, load settings from parts.

;;; Code:
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

;;; Указываем откуда брать части настроек.
(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory) user-emacs-directory)
        ((boundp 'user-init-directory) user-init-directory)
        (t "~/.emacs.d/")))

;;; Функция для загрузки настроек из указанного файла.
(defun load-user-file (file)
  (interactive "f")
  "Load a file in current user's configuration directory"
  (load-file (expand-file-name file user-init-dir)))

;;; Части конфигурации. Порядок не имеет принципиального значения,
;;; однако я рекомендую некоторые базовые вещи помещать в начало,
;;; чтобы не было необходимости вспоминать базовые команды EMACS
;;; если в результате улучшения сломается один из базовых конфигов.
(load-user-file "treemacs.el")
(load-user-file "all-the-icons.el")
(load-user-file "doom-theme.el")
(load-user-file "nyan-cat.el")


;;; А здесь EMACS хранит настройки, задаваемые через customize
(setq custom-file "~/.emacs.d/customize.el")
(load-user-file "customize.el")


;;Настраиваем экран приветствия
(setq inhibit-startup-screen t) ;:Убираем приветственный экран 
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

;;отображать номера строк слева
(global-linum-mode 1)

;;установить прозрачност (set-frame-parameter (selected-frame) 'alpha '(<active> . <inactive>)) 
(set-frame-parameter (selected-frame) 'alpha '(95 . 50))

;;; .emacs ends here
