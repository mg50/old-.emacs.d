(add-live-lib-path "ruby")
;(autoload 'ruby-mode "ruby-mode" "Major mode for ruby files" t)
;(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
;(add-to-list 'auto-mode-alist '("Gemfile.*" . ruby-mode))
;(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))


(require 'ruby-electric)
(autoload 'ruby-electric "ruby-electric" "Ruby electric mode" t)
(add-hook 'ruby-mode-hook (lambda () (ruby-electric-mode t)))
(add-hook 'ruby-mode-hook (lambda () (local-set-key "\r" 'ruby-reindent-then-newline-and-indent)))
(defun my-ruby-reindent-then-newline-and-indent (arg)
  "blah blah blah"
  (interactive "P")
  (self-insert-command (prefix-numeric-value arg))
  (backward-delete-char)
  (ruby-reindent-then-newline-and-indent))
;(define-key ruby-mode-map " " 'my-ruby-reindent-then-newline-and-indent)



(defvar my-ruby-close-brace-goto-close t
  "Non-nill indicates to move point to the next }, otherwise insert }
and delete the following }.")

(defun my-ruby-close-brace ()
  "replacement for ruby-electric-brace for the close brace"
  (interactive)
  (let ((p (point)))
    (if my-ruby-close-brace-goto-close
        (unless (search-forward "]" nil t)
          (message "No close brace found")
          (insert "]"))
      (insert "]")
      (save-excursion (if (search-forward "]" nil t)
                          (delete-char -1))))))
(define-key ruby-mode-map "]" 'my-ruby-close-brace)


(defvar my-ruby-close-curly-brace-goto-close t
  "Non-nill indicates to move point to the next }, otherwise insert }
and delete the following }.")

(defun my-ruby-close-curly-brace ()
  "replacement for ruby-electric-curly-brace for the close curly-brace"
  (interactive)
  (let ((p (point)))
    (if my-ruby-close-curly-brace-goto-close
        (unless (search-forward "}" nil t)
          (message "No close curly-brace found")
          (insert "}"))
      (insert "}")
      (save-excursion (if (search-forward "}" nil t)
                          (delete-char -1))))))
(define-key ruby-mode-map "}" 'my-ruby-close-curly-brace)



(defvar my-ruby-close-pipe-goto-close t
  "Non-nill indicates to move point to the next |, otherwise insert |
and delete the following |.")

(defun my-ruby-close-pipe ()
  "replacement for ruby-electric-pipe for the close pipe"
  (interactive)
  (let ((p (point)))
    (if my-ruby-close-pipe-goto-close
        (unless (search-forward "|" nil t)
          (message "No close pipe found")
          (insert "|"))
      (insert "|")
      (save-excursion (if (search-forward "|" nil t)
                          (delete-char -1))))))
(define-key ruby-mode-map "|" 'my-ruby-close-pipe)



(defvar my-ruby-close-paren-goto-close t
  "Non-nill indicates to move point to the next ), otherwise insert )
and delete the following ).")

(defun my-ruby-close-paren ()
  "replacement for ruby-electric-paren for the close paren"
  (interactive)
  (let ((p (point)))
    (if my-ruby-close-paren-goto-close
        (unless (search-forward ")" nil t)
          (message "No close paren found")
          (insert ")"))
      (insert ")")
      (save-excursion (if (search-forward ")" nil t)
                          (delete-char -1))))))
(define-key ruby-mode-map ")" 'my-ruby-close-paren)



(defvar my-ruby-close-quote-goto-close t
  "Non-nill indicates to move point to the next ', otherwise insert '
and delete the following '.")

(defun my-ruby-close-quote ()
  "replacement for ruby-electric-quote for the close quote"
  (interactive)
  (let ((p (point)))
    (if my-ruby-close-quote-goto-close
        (unless (search-forward "'" nil t)
          (message "No close quote found")
          (insert "'"))
      (insert "'")
      (save-excursion (if (search-forward "'" nil t)
                          (delete-char -1))))))
(define-key ruby-mode-map "'" 'my-ruby-close-quote)



(defvar my-ruby-close-double-quote-goto-close t
  "Non-nill indicates to move point to the next \", otherwise insert \"
and delete the following \".")

(defun my-ruby-close-double-quote ()
  "replacement for ruby-electric-double-quote for the close double-quote"
  (interactive)
  (let ((p (point)))
    (if my-ruby-close-double-quote-goto-close
        (unless (search-forward "\"" nil t)
          (message "No close double-quote found")
          (insert "\""))
      (insert "\"")
      (save-excursion (if (search-forward "\"" nil t)
                          (delete-char -1))))))
(define-key ruby-mode-map "\"" 'my-ruby-close-double-quote)



(defvar my-ruby-close-backqoute-goto-close t
  "Non-nill indicates to move point to the next `, otherwise insert `
and delete the following `.")

(defun my-ruby-close-backqoute ()
  "replacement for ruby-electric-backqoute for the close backqoute"
  (interactive)
  (let ((p (point)))
    (if my-ruby-close-backqoute-goto-close
        (unless (search-forward "`" nil t)
          (message "No close backqoute found")
          (insert "`"))
      (insert "`")
      (save-excursion (if (search-forward "`" nil t)
                          (delete-char -1))))))
(define-key ruby-mode-map "`" 'my-ruby-close-backqoute)
