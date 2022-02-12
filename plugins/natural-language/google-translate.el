(use-package google-translate)

;; Это фиксит баг но я не понимаю что тут происходит
(defun google-translate--search-tkk () "Search TKK." (list 430675 2721866130))

;; Для перевода выбирать по умолчанию англо-русский
(setq-default google-translate-default-source-language "en")
(setq-default google-translate-default-target-language "ru")

(setq-default google-translate-output-destination 'paragraph-overlay)
