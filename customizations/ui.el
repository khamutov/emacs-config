(if (display-graphic-p)
    (load-theme 'solarized-light 't)
  (load-theme 'default-light 't))

;; disable welcome screen
(setq inhibit-startup-screen t)

;; Set cursor type to bar like in the Atom editor
(setq-default cursor-type 'bar)


;; Set fonts for different OS
;;(cond
;; ((string-equal system-type "darwin")
;;  (setq default-frame-alist '((font . "Menlo-12"))))
;; ((string-equal system-type "gnu/linux")
;;  ((setq default-frame-alist '((font . "DejaVu Sans Mono-12"))))))

;; Show line numbers when run in the graphical mode
(when (display-graphic-p)
  (global-linum-mode 1))

;; Set size and color of line numbers
(defun setup-linum-ui ()
  (set-face-attribute 'linum nil :height 0.7 :foreground "SteelBlue"))
(when (display-graphic-p) (setup-linum-ui))

;; Enable vertical mode for ido
(ido-vertical-mode 1)

;; No cursor blinking
(blink-cursor-mode 0)

;; highlight line
(global-hl-line-mode)

;; Disable bell
(setq ring-bell-function 'ignore)

;; Indicate empty lines
(setq-default indicate-empty-lines 1)

;; Function for toggling dark and light theme
(defun toggle-dark-light-theme ()
  (interactive)
  (if (member 'solarized-dark custom-enabled-themes)
      (progn
	(disable-theme 'solarized-dark)
	(load-theme 'solarized-light t)
	(setup-linum-ui)
	(setup-sml))
    (progn
      (disable-theme 'solarized-light)
      (load-theme 'solarized-dark t)
      (setup-linum-ui)
      (setup-sml))))

;; C-x l for toggle themes
(global-set-key (kbd "C-x l") 'toggle-dark-light-theme)
