;;(setq initial-buffer-choice (lambda () (get-buffer "*dashboard*")))

(use-package dashboard
  :ensure t
  :config
  (setq dashboard-startup-banner "~/.emacs.d/dashboard-image/marivector.png")
  (dashboard-setup-startup-hook))




;; TODO ERROR: баг ломает запуск на маке
;; (add-hook 'dashboard-mode-hook
;; 	  (lambda ()
;; 	    (delete-other-windows)
;; 	    )
;; 	  )

;;; dashboard.el ends here
