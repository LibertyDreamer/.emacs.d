;; This file is loaded before the package system and GUI is initialized, so in it you can customize
;; variables that affect the package initialization process, such as package-enable-at-startup,
;; package-load-list, and package-user-dir.



;; Emacs "activates" ALL installed packages BEFORE reading the user-init-file
;; unless you've set package-enable-at-startup to nil in the early init file.
(setq package-enable-at-startup nil)
