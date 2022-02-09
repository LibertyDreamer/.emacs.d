;;: Подсвечивать скобки
(use-package rainbow-delimiters)

(add-hook 'emacs-lisp-mode-hook
	  (lambda()
	    (company-mode 1)
	    (rainbow-delimiters-mode 1)
	    (flycheck-mode 1)))
