;;(setq initial-buffer-choice (lambda () (get-buffer "*dashboard*")))

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))

(setq dashboard-startup-banner "~/.emacs.d/dashboard-image/marivector.png")


;; TODO ERROR: баг ломает запуск на маке
;; (add-hook 'dashboard-mode-hook
;; 	  (lambda ()
;; 	    (delete-other-windows)
;; 	    )
;; 	  )

;;; dashboard.el ends here
