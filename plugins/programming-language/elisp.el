;;; package --- Summar
;;; Commentary:
;;; Code:

;;: Подсвечивать скобки разными цветами
(use-package rainbow-delimiters)

(setq-default show-paren-style 'expression)


(defun elisp-find-function (event)
   "EVENT ds Rgf fds."
   (interactive "e")
   (mouse-set-point event)
   (find-function (function-called-at-point)
   ))


(add-hook 'emacs-lisp-mode-hook
	  (lambda()
	    (company-mode 1)
	    (rainbow-delimiters-mode 1)
	    (flycheck-mode 1)
	    (show-paren-mode 1)
	    (local-set-key [C-down-mouse-1] nil)
	    (local-set-key [C-mouse-1] 'elisp-find-function)
	    (smartparens-mode 1))
	  )

(use-package pos-tip)
(defun my-describe-function (function)
   "Display the full documentation of FUNCTION (a symbol) in tooltip."
   (interactive (list (function-called-at-point)))
   (if (null function)
       (pos-tip-show
        "** You didn't specify a function! **" '("red"))
     (pos-tip-show
      (with-temp-buffer
        (let ((standard-output (current-buffer))
              (help-xref-following t))
          (prin1 function)
          (princ " is ")
          (describe-function-1 function)
          (buffer-string)))
      nil nil nil 0)))

(define-key emacs-lisp-mode-map (kbd "C-;") 'my-describe-function)

(global-set-key [C-down-mouse-1] nil)
;; (global-set-key [C-mouse-1] 'elisp-find-function)


