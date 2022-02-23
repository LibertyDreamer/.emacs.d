;;: Подсвечивать скобки
(use-package rainbow-delimiters)


(setq-default show-paren-style 'expression)

(add-hook 'emacs-lisp-mode-hook
	  (lambda()
	    (company-mode 1)
	    (rainbow-delimiters-mode 1)
	    (flycheck-mode 1)
	    (show-paren-mode 1)))
