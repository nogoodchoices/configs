;; disable splash screen and startup message
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;; Packages
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
	     '("elpy" . "https://jorgenschaefer.github.io/packages/"))
(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/"))

(package-initialize)

;; Line length indicator
(use-package fill-column-indicator
             :ensure t
             :config
             (setq fci-rule-column 100)
               (add-hook 'after-change-major-mode-hook 'fci-mode))

;; elpy (python fanciness)
(elpy-enable)

(use-package yasnippet
  :ensure t)
(add-to-list 'yas-snippet-dirs "~/.emacs.d/snippets")
(yas-global-mode 1)

;; disable back-up file creation
(setq make-backup-files nil)

;; Prevent Extraneous Tabs
(setq-default indent-tabs-mode nil)

;; Tabs into spaces
(setq indent-tabs-mode nil)

;; Set file syntax highlighting modes
(require 'generic-x)
(setq auto-mode-alist (cons '("\\.php$" . php-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.phtml$" . php-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.mako$" . html-mode) auto-mode-alist))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(frame-background-mode (quote dark))
 '(show-trailing-whitespace t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flymake-errline ((t (:background "red" :foreground "brightwhite")))))

;; PHP error log macro
;;(fset 'php-error-log-ajm
;;   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("error_log(\"\\n\", 3, '/tmop/ajm.log');OAOCOCOCOCOCOCOCOCOCOCOC" 0 "%d")) arg)))
;;(global-set-key (kbd "C-x C-R") 'php-error-log-ajm)

;; Alex won't tell me what flycheck is for (it's syntax checking)
(use-package flycheck
  :ensure t
    :init (global-flycheck-mode))
;; switch out flymake for flycheck
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; always use ido (interactive do things) mode
(use-package ido
  :config
  (ido-mode t)
  (setq ido-enable-flex-matching t)
    (setq ido-everywhere t))

;; Remove trailing whitespace on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)
