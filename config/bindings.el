;; Place personal bindings here

(define-key function-key-map "\e[1;2A" [S-up])
(define-key input-decode-map "\e[1;2A" [S-up])

(global-set-key (kbd "<home>") 'mark-sexp) ; I bound C-M-SPC to "home", a.k.a. ^[ [1;2H, on iTerm to make this work

(defadvice terminal-init-xterm (after map-S-up-escape-sequence activate)
  (define-key input-decode-map "\e[1;2A" [S-up]))

(global-set-key (kbd "C-x C-_") 'comment-or-uncomment-region)
(global-set-key (kbd "C-x C-m") 'windresize)
(global-set-key (kbd "M-RET") 'cua-set-rectangle-mark)
(global-set-key (kbd "C-c g") 'magit-status)

(global-set-key (kbd "C-y") 'auto-indent-yank)

(global-set-key (kbd "<C-S-up>")     'buf-move-up)
(global-set-key (kbd "<C-S-down>")   'buf-move-down)
(global-set-key (kbd "<C-S-left>")   'buf-move-left)
(global-set-key (kbd "<C-S-right>")  'buf-move-right)

(global-set-key (kbd "ESC <right>") 'fm-right-frame)
(global-set-key (kbd "ESC <down>") 'fm-down-frame)
(global-set-key (kbd "ESC <up>") 'fm-up-frame)
(global-set-key (kbd "ESC <left>") 'fm-left-frame)

(global-set-key (kbd "C-c w") 'whitespace-cleanup)

(global-set-key (kbd "M-s M-b") 'sr-speedbar-toggle)

(global-set-key (kbd "M--") 'undo-tree-undo)
(global-set-key (kbd "M-=") 'undo-tree-redo)

(defun swap-buffers-in-windows ()
  "Put the buffer from the selected window in next window, and vice versa"
  (interactive)
  (let* ((this (selected-window))
         (other (next-window))
         (this-buffer (window-buffer this))
         (other-buffer (window-buffer other)))
    (set-window-buffer other this-buffer)
    (set-window-buffer this other-buffer)))
(global-set-key (kbd "M-s M-s")  'swap-buffers-in-windows)


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

(global-set-key (kbd "\C-b") 'indent-line-and-newline-up)
(global-set-key (kbd "\C-f") 'indent-line-and-newline-down)

(global-set-key (kbd "\C-x f") 'find-file-in-project)

(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
(define-key global-map (kbd "C-x SPC") 'ace-jump-mode-pop-mark)

(defun revert-buffer-no-confirm ()
    "Revert buffer without confirmation."
    (interactive) (revert-buffer t t))
(global-set-key (kbd "\C-c \C-r") 'revert-buffer-no-confirm)


(defun kill-whole-line-save-point ()
  "asdf"
  (interactive)
  (save-excursion
    (kill-whole-line)))

(defun mark-sexp-and-exchange-point ()
  "asdfasf"
  (interactive)
  (mark-sexp)
  (exchange-point-and-mark t))
