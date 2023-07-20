(add-to-list 'auto-mode-alist '("\\.jsx?$" . web-mode)) ;; auto enable for .js&x

(setq web-mode-content-types-alist '(("jsx" . "\\.js[x]?\\'")))
(setq web-mode-enable-auto-quoting nil)
