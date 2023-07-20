;; Disable whitespace line limit (80) in just org-mode and markdown-mode
(defun disable-whitespace-line-limit ()
  (interactive)
  (set (make-local-variable 'whitespace-line-column) 100000000))

(add-hook 'org-mode-hook 'disable-whitespace-line-limit)
(add-hook 'markdown-mode-hook 'disable-whitespace-line-limit)
