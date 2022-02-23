;;; package --- Summar
;;; Commentary:
;;; Загрузка и настройка пакета undo-tree

;;; Code:

;;; Позволяет отобразить дерево изменений файла.
(use-package undo-tree
  :config
  ;;; Использовать этот мод везде
  (global-undo-tree-mode))

;;; undo-tree.el ends here
