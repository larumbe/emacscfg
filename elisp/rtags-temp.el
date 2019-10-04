;;; C++ stuff
;;; ELPA: rtags, company-rtags, rtags-helm
(setq rtags-autostart-diagnostics t)
(rtags-diagnostics)
(setq rtags-completions-enabled t)
(push 'company-rtags company-backends)
(global-set-key (kbd "C-c r") nil) ;; Remove the old keybinding
(rtags-enable-standard-keybindings)

(define-key c-mode-base-map (kbd "C-M-.") 'rtags-find-symbol-at-point)
(define-key c-mode-base-map (kbd "C-M-,") 'rtags-location-stack-back)

(require 'helm-rtags)
(setq rtags-use-helm t)
(setq rtags-display-result-backend 'helm)

(setq rtags-rc-binary-name "~/usr/src/lang/rtags/bin/rc")


(define-key c++-mode-map (kbd "C-c 1") 'company-irony)
(define-key c++-mode-map (kbd "C-c 2") 'company-rtags)
