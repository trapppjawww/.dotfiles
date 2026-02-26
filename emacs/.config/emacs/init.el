(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(setq custom-file "~/.config/emacs/custom.el")
(load custom-file)

(menu-bar-mode 0)
(show-paren-mode 1)

(setq inhibit-startup-screen t)
(setq make-backup-files nil)
(setq column-number-mode t)

(require 'multiple-cursors)
;;; When you have an active region that spans multiple lines, the following
;;; will add a cursor to each line
(global-set-key (kbd "C-c C-r") 'mc/edit-lines)

;;; When you want to add multiple cursors not based on continuous lines,
;;; but based on keywords in the buffer, use:
(global-set-key (kbd "C-c C-n") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c C-p") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-a") 'mc/mark-all-like-this)
(global-set-key (kbd "C-c C-u") 'mc/skip-to-next-like-this)
(global-set-key (kbd "C-c C-l") 'mc/skip-to-previous-like-this)

