;; Core application 
;; Without them all will be broken
;;For start let's install base applications

;;Installing straight.el. I don't understand what is going on,
;;I simply copied it from straight installation instruction.

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





(load-file "~/.emacs.d/configuration.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("88f7ee5594021c60a4a6a1c275614103de8c1435d6d08cc58882f920e0cec65e" default)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
