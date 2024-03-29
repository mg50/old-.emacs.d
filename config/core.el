;; Here is the root of your personal configs.
;; Either place config straight in here,
;; such as this colour theme (feel free to change it to your own favourite theme)

;; use blackbored colour theme
(load-file (concat dotfiles-lib-dir "blackbored.el"))
(load-file (concat dotfiles-lib-dir "color-theme-almost-monokai.el"))
(color-theme-almost-monokai)


;;Or load external files such as this bindings file:
(load-dotfile "config/bindings.el")


(add-hook 'c-mode-hook (lambda () (local-set-key "\r" 'newline-and-indent)))
(setq visible-bell nil)
(setq ring-bell-function 'ignore)
