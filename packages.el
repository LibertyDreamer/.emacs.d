;установить репозиторий melpa
(require 'package)
;;(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(package-refresh-contents)

;; Comment out if you've already loaded this package...
(require 'cl-lib)

(defvar my-packages
  '(nyan-mode google-translate emms)
  "A list of packages to ensure are installed at launch.")

(defun my-packages-installed-p ()
  (cl-loop for p in my-packages
           when (not (package-installed-p p)) do (cl-return nil)
           finally (cl-return t)))

(unless (my-packages-installed-p)
  ;; check for new packages (package versions)
  (package-refresh-contents)
  ;; install the missing packages
  (dolist (p my-packages)
    (when (not (package-installed-p p))
      (package-install p))))

;;Настроки котика
(require 'nyan-mode)
(setq nyan-animate-nyancat t) ;; Анимация котика t/nul(да/нет)
(setq nyan-wavy-trail t)
(nyan-mode 1) ;;Загрузить котика

;;Настройки google-translate
(setq google-translate-default-source-language 'English)
(setq google-translate-default-target-language 'Russian)

;;Настройка emms
