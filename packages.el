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
  '(nyan-mode spacemacs-theme google-translate define-it telega helm neotree rainbow-delimiters company)
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

;Добавим путь к пакетам которых нет в melpa
(add-to-list 'load-path "~/.emacs.d/melpa-not-yet-package-NOT-DELETE-THIS")

;;Настройки котика
(require 'nyan-mode)
(setq nyan-animate-nyancat t) ;; Анимация котика t/nul(да/нет)
(setq nyan-wavy-trail t)
(nyan-mode 1) ;;Загрузить котика

;;Настройки HELM
(global-set-key (kbd "M-x") 'helm-M-x)
(setq-default helm-M-x-fuzzy-match t)

;;загрузить пакет meme молочник не принес
(require 'meme)

;; Настройки google-translate
(setq google-translate-default-source-language "en")
(setq google-translate-default-target-language "ru")

;; Настройки define-it
(setq define-it-output-choice 'pop)

;;Настройки rainbow-delimiters (подсветка скобок)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; Настройки company-mode для telega
(setq telega-emoji-company-backend 'telega-company-emoji)

(defun my-telega-chat-mode ()
  (set (make-local-variable 'company-backends)
       (append (list telega-emoji-company-backend
                   'telega-company-username
                   'telega-company-hashtag)
             (when (telega-chat-bot-p telega-chatbuf--chat)
               '(telega-company-botcmd))))
  (company-mode 1))

(add-hook 'telega-chat-mode-hook 'my-telega-chat-mode)
