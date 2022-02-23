;;(setq initial-buffer-choice (lambda () (get-buffer "*dashboard*")))

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))
;;; dashboard.el ends here


(setq dashboard-startup-banner "~/.emacs.d/dashboard-image/marivector.png")
