;;; package --- Summary
;;; Commentary:
;;; Настройки пакета all-the-icons
;;; Code:

;; Использовать пакет если функция(display-graphic-p) возвращает t,
;; если дисплей является графическим дисплеем, способным отображать
;; несколько кадров и несколько разных шрифтов одновременно.
;; Это верно для дисплеев, использующих оконную систему,
;; такую как X, и false для текстовых терминалов.
(use-package all-the-icons
  :if (display-graphic-p)
  :init
  ;;Если шрифт all-the-icons не найден установим его
  (if (not (find-font (font-spec :name "all-the-icons")))
      (all-the-icons-install-fonts t)))

;;; all-the-icons.el ends here
