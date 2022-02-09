(use-package doom-modeline
  :ensure t
  :config
  ;; Ширина разделяющей полоски
  (setq doom-modeline-bar-width 1)
  ;; Показывать ли минорные режимы
  (setq doom-modeline-minor-modes t)

  (setq doom-modeline-major-mode-icon t)
  :init (doom-modeline-mode 1))
