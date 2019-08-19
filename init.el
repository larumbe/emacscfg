;;; New config file after .emacs bankruptcy

;;; package initialisation
(package-initialize)

;;; package sources
(unless (assoc-default "melpa" package-archives)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t))
(unless (assoc-default "org" package-archives)
  (add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t))

(add-to-list 'load-path "~/~/usr/src/emacs/dotemacs/elisp/")

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(setq use-package-verbose t)
(setq use-package-always-ensure t)

(require 'use-package)
(use-package auto-compile
  :config (auto-compile-on-load-mode))

(setq load-prefer-newer t)

(global-set-key (kbd "C-x M-p") 'package-list-packages)
