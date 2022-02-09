;;; package --- Summary
;;; Commentary:
;;; Main EMACS settings file, load settings from parts.

;;; Code:
(defun set-user-info (name mail-address)
	"Установить NAME пользователя и MAIL-ADDRESS."
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
  "LIST список содержащий полные пути до файлов загрузки-конфигурирования плагинов."
  (while list
    (load-file (car list))
    (setq list (cdr list))))


(load-plugins (directory-files-recursively "~/.emacs.d/plugins" "\.el$"))

;;; А здесь EMACS хранит настройки, задаваемые через customize
(setq custom-file "~/.emacs.d/customize.el")
(load-file custom-file)


;;; Папка для хранения бэкапов
(setq backup-directory-alist `(("." . "~/.emacs.d/backup")))

;;; init.el ends here
