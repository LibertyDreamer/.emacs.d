;;; package --- Summar
;;; Commentary:
;;; Code:

;;: Подсвечивать скобки разными цветами
(use-package rainbow-delimiters)

(setq-default show-paren-style 'expression)

(defun elisp-jump-to-pos-and-find-function()
   "Rgf fds."
  (mouse-set-point last-input-event)
  (find-function)
  )


(add-hook 'emacs-lisp-mode-hook
	  (lambda()
	    (company-mode 1)
	    (rainbow-delimiters-mode 1)
	    (flycheck-mode 1)
	    (show-paren-mode 1)
	    (local-set-key [C-down-mouse-1] 'elisp-jump-to-pos-and-find-function)
	    (smartparens-mode 1))

	  )





