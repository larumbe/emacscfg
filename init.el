;;; init.el -- Emacs configuration

;;; Commentary:
;;; Loads an org file and builds the config file out of its code

;;; Code:

(require 'package)

(setq-default
 load-prefer-newer t
 package-enable-at-startup nil
 package-user-dir (concat default-directory "elpa"))

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)

(package-initialize)

;;; Dependencies

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package t))

(setq-default
 use-package-always-defer t
 use-package-always-ensure t)

(org-babel-load-file (expand-file-name "dotemacs.org"))

;;; init.el ends here
