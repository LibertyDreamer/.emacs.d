(use-package neotree
  :init
  (global-set-key [f8] 'neotree-toggle)
  (setq neo-theme (if (display-graphic-p) 'icons))
(setq-default neo-show-hidden-files t)

(setq neo-window-fixed-size nil)

;; Автообновление neotree
(setq neo-autorefresh t)

(setq neo-cwd-line-style 'button)

;;При запуске «projectile-switch-project» (C-c p p) «neotree» автоматически изменит корень.
(setq projectile-switch-project-action 'neotree-projectile-action)
:config
(neotree)
  )

