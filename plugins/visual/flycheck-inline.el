(use-package flycheck-inline)

(setq flycheck-display-errors-delay 0)

(with-eval-after-load 'flycheck
  (add-hook 'flycheck-mode-hook #'flycheck-inline-mode))
