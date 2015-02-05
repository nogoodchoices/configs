;; disable splash screen and startup message
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;; disable back-up file creation
(setq make-backup-files nil)

;; Prevent Extraneous Tabs
(setq-default indent-tabs-mode nil)

;; Tabs into spaces
(setq indent-tabs-mode nil)

;; Set .phtml files to be edited with php-mode
(setq auto-mode-alist (cons '("\\.phtml$" . php-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.mako$" . html-mode) auto-mode-alist))
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(show-trailing-whitespace t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(font-lock-comment-face ((nil (:foreground "red"))))
 '(font-lock-constant-face ((((class color) (min-colors 8)) (:foreground "dark gray"))))
 '(font-lock-function-name-face ((((class color) (min-colors 88) (background light)) (:foreground "Blue" :weight bold))))
 '(font-lock-keyword-face ((((class color) (min-colors 88) (background light)) (:foreground "deepskyblue"))))
 '(font-lock-string-face ((((class color) (min-colors 88) (background light)) (:foreground "light green"))))
 '(font-lock-variable-name-face ((((class color) (min-colors 88) (background light)) (:foreground "chartreuse" :weight extra-bold))))
 '(font-lock-warning-face ((((class color) (min-colors 88) (background light)) (:foreground "pink" :weight bold)))))
