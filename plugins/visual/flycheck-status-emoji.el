(use-package flycheck-status-emoji)

(flycheck-status-emoji-mode 1)

;; Для отображения этого мода нужно что-бы шрифт поддерживал эмодзи
(set-fontset-font t '(#x1f000 . #x1faff)
		      (font-spec :family "Apple Color Emoji"))
