(use-package all-the-icons
  :if (display-graphic-p))

;;Если шрифт all-the-icons не найдет установим его
(if (not (find-font (font-spec :name "all-the-icons")))
    (all-the-icons-install-fonts))

;;; all-the-icons.el ends here


