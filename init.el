;;; init.el -- Emacs configuration

;;; Commentary:
;;; Loads an org file and builds the config file out of its code

;;; Code:

(require 'package)

(setq user-emacs-directory default-directory)

(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

(setq-default
 load-prefer-newer t
 package-enable-at-startup nil
 package-user-dir (concat user-emacs-directory "elpa")
 package-check-signature nil)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)

(package-initialize)

;;; Dependencies

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package t))

(setq-default
 use-package-always-defer t
 use-package-always-ensure t)

(use-package use-package-ensure-system-package
  :ensure t)

(org-babel-load-file (expand-file-name "dotemacs.org"))

;;; init.el ends here
