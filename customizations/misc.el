;; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)

;; Store customizations made with customize-* in ~/.emacs-custom.el
;; instead of ~/.emacs.d/init.el
(setq custom-file "~/.emacs-custom.el")

;; It's not enough to redefine custom file path, we need to explicitly
;; load it
(when (file-exists-p custom-file)
  (load custom-file))
