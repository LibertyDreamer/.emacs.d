(global-set-key [mouse-3] 'my-context-menu)

(with-eval-after-load "menu-bar"
  (require 'url-util)

  (defvar edit-popup-menu
    '(keymap
     

      (find-function menu-item "Find function" find-function )
      (describe-function menu-item "Describe function" describe-function)
      (function-reference menu-item "Function reference" xref-find-references)
      
      
      (separator-0 menu-item "--")

      (comment menu-item "Comment/Uncomment" comment-dwim
           :enable (use-region-p)
           :keys "M-;")
       (undo menu-item "Undo" undo
            :enable (and
                     (not buffer-read-only)
                     (not
                      (eq t buffer-undo-list))
                     (if
                         (eq last-command 'undo)
                         (listp pending-undo-list)
                       (consp buffer-undo-list)))
            :keys "")
       
      (cut menu-item "Cut" clipboard-kill-region
           :enable ((use-region-p)
		    (not buffer-read-only))
		    
           :keys "C-w")

 
      
      (copy menu-item "Copy" clipboard-kill-ring-save
            :enable (use-region-p)
            :keys "M-w")
      (paste menu-item "Paste" clipboard-yank
             ;; :keys "C-y"
	     )
      (paste-from-menu menu-item "Paste from Kill Menu" yank-menu
                       :enable (and
                                (cdr yank-menu)
                                (not buffer-read-only))
                       :help "Select a string from the kill ring and paste it")
      (clear menu-item "Delete" delete-region
             :enable (and mark-active (not buffer-read-only))
             :help "Clear region"
             :keys "Del")

  (mark-whole-buffer menu-item "Select All" mark-whole-buffer
                         :enable (not (= (buffer-size) 0)))

  (separator-3 menu-item "--")
  
  (translate-it menu-item "Translate it"  (lambda () (interactive) (condition-case google-translate-at-point
							 (google-translate-buffer)
						        (error nil))))
  
      (separator-1 menu-item "--")

      (open-undo-tree-visualize menu-item "Open undo tree" undo-tree-visualize
				:keys "")
      
      (kill-buffer menu-item "Kill buffer" (lambda () (interactive) (kill-buffer (current-buffer)))
		   :keys "")
       (show-buffers menu-item "Show all buffers" (lambda () (interactive) (ibuffer))
		   :keys "")

      (separator-2 menu-item "--")
      (magit-status menu-item "Magit-status" magit-status)
      
     ))

  (defun my-context-menu (event)
    "Pop up a context menu."
    (interactive "e")
    (popup-menu edit-popup-menu)))

(provide 'context-menu)
