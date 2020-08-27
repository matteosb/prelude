(setq js-indent-level 2)

(prelude-require-packages
 '(racket-mode
   material-theme))

;; Disable toolbars
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; C-c C-. doesn't work in Tilix, rebind racket define to C-c C-d
(add-hook 'racket-mode-hook
          (lambda ()
            (define-key racket-mode-map (kbd "C-c C-d") 'racket-describe)))

(add-hook 'json-mode-hook
          (lambda ()
            (make-local-variable 'js-indent-level)
            (setq js-indent-level 2)))

(require 'clojure-mode)
(put-clojure-indent 'describe 1)
(put-clojure-indent 'it 2)
(put-clojure-indent 'before 1)
(put-clojure-indent 'beforeEach 1)
(put-clojure-indent 'after 1)
(put-clojure-indent 'afterEach 1)

;; (require 'lsp-mode)
;; (add-hook 'elixir-mode-hook #'lsp)
;; (add-to-list 'exec-path "~/elixir_ls/")
;; (setq projectile-indexing-method 'hybrid)
