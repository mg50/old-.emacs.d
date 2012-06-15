
(add-live-lib-path "fuel")
(require 'factor-mode)
(autoload 'factor-mode "factor-mode" "Major mode for factor files" t)

; (add-live-lib-path "ruby")
; (autoload 'ruby-mode "ruby-mode" "Major mode for ruby files" t)
; (add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
; (add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))
; (add-hook 'ruby-mode-hook (lambda () (local-set-key "\r" 'newline-and-indent)))


; (require 'ruby-electric)
; ;(autoload 'ruby-electric "ruby-electric" "Ruby electric mode" t)
; (add-hook 'ruby-mode-hook (lambda () (ruby-electric-mode t)))
