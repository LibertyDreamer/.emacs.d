(use-package flycheck-status-emoji)

;(if (not (find-font (font-spec :name "Noto color emoj")))
;    (all-the-icons-install-fonts t))

(flycheck-status-emoji-mode 1)
(setq flycheck-status-emoji-indicator-finished-ok 128571)
(setq flycheck-status-emoji-indicator-finished-error 128576)
(setq flycheck-status-emoji-indicator-finished-warning 128574)
(setq flycheck-status-emoji-indicator-finished-info 128570)
(setq flycheck-status-emoji-indicator-suspicious 128572)

;; Для отображения этого мода нужно что-бы шрифт поддерживал эмодзи
(set-fontset-font t '(#x1f000 . #x1faff)
		  (font-spec :family "Apple color emoji"))
