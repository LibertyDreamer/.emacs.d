;; Core application 
;; Without them all will be broken
;;For start let's install base applications

;;Installing straight.el. I don't understand what is going on,
;;I simply copied it from straight installation instruction.
;;; Code:
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
	"straight/repos/straight.el/bootstrap.el"
	(or (bound-and-true-p straight-base-dir)
	    user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
	(url-retrieve-synchronously
	 "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
	 'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; Use straight for use-package expressions,
;; Non-nil straight-use-package-by-default means install packages
;; by default in ‘use-package’ forms.
(straight-use-package 'use-package)
(setq straight-use-package-by-default t)

;; Next, I use literate config I want to have auto tangle
(use-package org-auto-tangle
  :hook (org-mode . org-auto-tangle-mode))

(defmacro package! (name &rest args)
  "A simple macro to declare packages similar to Doom Emacs' `package!`."
  `(use-package ,name
     ,@args))

(load-file "~/.emacs.d/configuration.el")

;;; init.el ends here
