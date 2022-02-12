;;; package --- Summar
;;; Commentary:
;;; Загрузка и настройка пакета undo-tree

;;; Code:
;; Позволяет отобразить дерево изменений файла.
(use-package undo-tree)

;; Использовать этот мод везде
(global-undo-tree-mode)




;(add-hook 'undo-tree-mode-hook  (add-hook 'focus-out-hook 'undo-tree-visualizer-quit)) 
;;; undo-tree.el ends here
