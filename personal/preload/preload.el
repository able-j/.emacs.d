(menu-bar-mode -1)
(scroll-bar-mode -1)

(setq prelude-flyspell nil)

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

(require 'company-tabnine)
(add-to-list 'company-backends #'company-tabnine)

;; set EasyPG pinentry mode
(setq epa-pinentry-mode 'loopback)
(pinentry-start)

;; enable shx
(shx-global-mode 1)

;; helm-spotify-plus
(require 'helm-spotify-plus)
(global-set-key (kbd "M-n s") 'helm-spotify-plus)
(global-set-key (kbd "M-n f") 'helm-spotify-plus-next)
(global-set-key (kbd "M-n b") 'helm-spotify-plus-previous)
(global-set-key (kbd "M-n p") 'helm-spotify-plus-play)
(global-set-key (kbd "M-n g") 'helm-spotify-plus-pause)

;; bindings
(global-set-key (kbd "C-x 7") 'kill-this-buffer)

(setq prelude-theme 'moe-dark)
