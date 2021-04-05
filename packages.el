;установить репозиторий melpa
(require 'package)
(setq package-archives
      '(("GNU ELPA"     . "https://elpa.gnu.org/packages/")
        ("MELPA Stable" . "https://stable.melpa.org/packages/")
        ("MELPA"        . "https://melpa.org/packages/"))
      package-archive-priorities
      '(("MELPA Stable" . 10)
        ("GNU ELPA"     . 5)
        ("MELPA"        . 0)))

(package-initialize)
(package-refresh-contents)

;; Comment out if you've already loaded this package...
(require 'cl-lib)

(defvar my-packages ; <----------- PACKAGE HERE
  '(nyan-mode spacemacs-theme google-translate define-it telega helm xkcd neotree)
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

;;Настройки HELM
(global-set-key (kbd "M-x") 'helm-M-x)
(setq-default helm-M-x-fuzzy-match t)

;;загрузить пакет meme такая срань так как его нет в melpa
(add-to-list 'load-path "~/.emacs.d/melpa-not-yet-package")
(require 'meme)
(autoload 'meme "meme.el" "Create a meme from a collection" t)
(autoload 'meme-file "meme.el" "Create a meme from a file" t)

;; Настройки google-translate
(setq google-translate-default-source-language "English")
(setq google-translate-default-target-language "Russian")

;; Настройки define-it
(setq define-it-output-choice 'pop)

;; Fix error of "Failed to search TKK" google-translate
(defun google-translate--get-b-d1 ()
    ;; TKK='427110.1469889687'
  (list 427110 1469889687))
