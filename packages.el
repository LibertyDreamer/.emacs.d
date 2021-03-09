;установить репозиторий melpa
(require 'package)
(setq package-archives
      '(("GNU ELPA"     . "https://elpa.gnu.org/packages/")
        ("MELPA Stable" . "https://stable.melpa.org/packages/")
        ("MELPA"        . "https://melpa.org/packages/"))
      package-archive-priorities
      '(("MELPA Stable" . 0)
        ("GNU ELPA"     . 5)
        ("MELPA"        . 10)))

(package-initialize)
(package-refresh-contents)

;; Comment out if you've already loaded this package...
(require 'cl-lib)

(defvar my-packages ; <----------- PACKAGE HERE
  '(nyan-mode spacemacs-theme google-translate telega)
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

