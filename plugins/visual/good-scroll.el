(use-package good-scroll)
(global-set-key [next] #'good-scroll-up-full-screen)
(global-set-key [prior] #'good-scroll-down-full-screen)

(good-scroll-mode 1)

(setq good-scroll-render-rate 0.01)
