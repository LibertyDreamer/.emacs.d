;;; Code:
(setq package-check-signature nil)
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
(package-refresh-contents t)

(defvar my-packages
  '(dracula-theme irony company company-irony flycheck-irony cmake-mode neotree nyan-mode all-the-icons helm define-it telega)
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

;;Настройки nyan-mode
(defvar nyan-wavy-trail 't)
(defvar nyan-animate-nyancat 't)
(nyan-mode 1)

(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)
;;(add-hook 'org-mode-hook 'irony-mode)

(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

;; Windows performance tweaks
;;(when (boundp 'w32-pipe-read-delay)
;;  (setq w32-pipe-read-delay 0))
;; Set the buffer size to 64K on Windows (from the original 4K)
;;(when (boundp 'w32-pipe-buffer-size)
;;  (setq irony-server-w32-pipe-buffer-size (* 64 1024)))

(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))

(add-hook 'after-init-hook 'global-company-mode)

(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))

(add-hook 'after-init-hook #'global-flycheck-mode)

(org-babel-do-load-languages
 'org-babel-load-languages '((C . t)))
(add-hook 'after-save-hook 'org-babel-tangle)


(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
(setq-default neo-show-hidden-files t)
(neotree)

;;Настройки HELM
(global-set-key (kbd "M-x") 'helm-M-x)
(setq-default helm-M-x-fuzzy-match t)

(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Настройки define-it
(setq define-it-output-choice 'pop)
;;Нажатие на F5 в файле cmake org
;;cpp c h hpp вызывает сохранение всех файлов c указанными расширениями и запуск компиляции.
;;так же запуск отладчика
