(add-live-lib-path "clojure-mode")
(require 'clojure-mode)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
(add-hook 'clojure-mode-hook 'rainbow-paren-mode)

(eval-after-load 'clojure-mode
  '(font-lock-add-keywords
    'clojure-mode `(("(\\(fn\\)[\[[:space:]]"
                     (0 (progn (compose-region (match-beginning 1)
                                               (match-end 1) "λ")
                               nil))))))

(eval-after-load 'clojure-mode
  '(font-lock-add-keywords
    'clojure-mode `(("\\(#\\)("
                     (0 (progn (compose-region (match-beginning 1)
                                               (match-end 1) "ƒ")
                               nil))))))

(eval-after-load 'clojure-mode
  '(font-lock-add-keywords
    'clojure-mode `(("\\(#\\){"
                     (0 (progn (compose-region (match-beginning 1)
                                               (match-end 1) "∈")
                               nil))))))

(eval-after-load 'find-file-in-project
  '(add-to-list 'ffip-patterns "*.clj"))
(eval-after-load 'find-file-in-project
  '(add-to-list 'ffip-patterns "*.cljs"))
(eval-after-load 'find-file-in-project
  '(add-to-list 'ffip-patterns "*.hiccup"))

(add-to-list 'auto-mode-alist '("\\.cljs$" . clojure-mode))

;;command to align let statements
;;To use: M-x align-cljlet
(add-live-lib-path "align-cljlet")
(require 'align-cljlet)
