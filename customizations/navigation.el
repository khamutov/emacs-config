;; Easier navigation with C-x C-f
(ido-mode 1)

;; Allow partial matches, e.g. "ne" will match navigation.el in this
;; directory
(setq ido-enable-flex-matching t)

;; Turn this behavior off because it's annoying, e.g. when pressing
;; C-x C-f to create a new file, don't try to use existing
;; files/buffers names
(setq ido-use-filename-at-point nil)

;; Ido everywhere, even in dired
(setq ido-everywhere t)

;; Use ibuffer for displaying currenly opened buffers list
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Enable windmove keybindings. Jump between windows with shift +
;; direction arrow
(windmove-default-keybindings 'super)

;; projectile everywhere!
(projectile-global-mode)

;; Call imenu list by C-'
;; (global-set-key (kbd "C-'") #'imenu-list-minor-mode)

;; Call smex by M-x
(global-set-key (kbd "M-x") 'smex)

(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

;; sr-speedbar
;;(global-set-key (kbd "s-s") 'sr-speedbar-toggle)
