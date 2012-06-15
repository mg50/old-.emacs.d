;; Place personal bindings here

(define-key function-key-map "\e[1;2A" [S-up])

(global-set-key (kbd "C-x C-_") 'comment-or-uncomment-region)
(global-set-key (kbd "C-x C-m") 'windresize)
(global-set-key (kbd "M-RET") 'cua-set-rectangle-mark)

(defun hello ()
  "Hello World and you can call it via M-x hello."
  (interactive)

  (message "Hello World!"))


(defun indent-line-and-newline-down ()
  "blah"
  (interactive)
  (move-end-of-line 1)
  (newline-and-indent))

(defun indent-line-and-newline-up ()
  "blah"
  (interactive)
  (move-beginning-of-line 1)
  (newline-and-indent)
  (previous-line)
  (previous-line)
  (move-end-of-line 1)
  (newline-and-indent)
  (next-line)
  (backward-delete-char 1)
  (move-end-of-line 1))

(global-set-key (kbd "\C-f") 'indent-line-and-newline-up)
(global-set-key (kbd "\C-b") 'indent-line-and-newline-down)

(defun revert-buffer-no-confirm ()
    "Revert buffer without confirmation."
    (interactive) (revert-buffer t t))
(global-set-key (kbd "\C-c \C-r") 'revert-buffer-no-confirm)
