;; Core application 
;; Without them all will be broken

(require 'package)
;; Add MELPA to package sources
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

;; It's initialize all packages if i switch off it in early-init
;; Load all packages from variable package-load-list
;; (package-initialize)

;; Prefer GNU over MELPA (optional)
(setq package-archive-priorities '(("melpa" . 30)("gnu" . 20)("nongnu" . 10)))
;; Update info about packages from repos
(package-refresh-contents)


;; What I wanna install
(setq package-selected-packages '())

;; switch off auto-load
(setq package-load-list '())


;; It add package to package list
(defun package! (pkg)
  "Add the package PKG to the list of selected packages if it's not already present."
  (add-to-list 'package-selected-packages pkg))

;; Usage example:
(package! use-package)




;; Remove packages with
(package-autoremove)
;; Install packages with
(package-install-selected-packages)
;; If you want to automate that, maybe add them to your 'emacs-startup-hook'?


;; Next, I use literate config I want to have auto tangle
;; (use-package org-auto-tangle
;;  :hook (org-mode . org-auto-tangle-mode))

;;(load-file "~/.emacs.d/configuration.el")

;;;;END HERE
