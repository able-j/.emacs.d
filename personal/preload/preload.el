(menu-bar-mode -1)

(setq org-agenda-files '("~/org"))

(setq org-hide-leading-stars t)
(setq org-hide-emphasis-markers t)
(setq org-pretty-entities t)

;; Auto switch to emacs new window
(defun split-and-follow-horizontally ()
  (interactive)
  (split-window-below)
  (balance-windows)
  (other-window 1))

(defun split-and-follow-vertically ()
  (interactive)
  (split-window-right)
  (balance-windows)
  (other-window 1))

(global-set-key (kbd "C-x 2") 'split-and-follow-vertically)
(global-set-key (kbd "C-x 3") 'split-and-follow-horizontally)

;; Disable flyspell in org mode
(add-hook 'text-mode-hook (lambda ()
                            (when (not (equal major-mode 'org-mode))
                              (flyspell-mode t))))

;; magit bind
(global-set-key (kbd "C-x g") 'magit-status)

(setq prelude-theme 'moe-dark)
