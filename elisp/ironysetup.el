(defun my:c-set-company-backends ()
  "nothing to say here"
  (interactive)
  (irony-mode)
  (irony-eldoc)
  (flycheck-mode)
  (define-key c-mode-map (kbd "C-c c") 'flycheck-mode)
  ;; (setq-local company-backends (list 'company-irony 'company-irony-c-headers))
  (setq-local company-backends (list 'company-irony 'company-irony-c-headers 'company-semantic 'company-gtags)))


(add-hook 'c-mode-hook 'my:c-set-company-backends)

(add-hook 'flycheck-mode-hook 'flycheck-irony-setup)

(delete 'c-turn-on-eldoc-mode c-mode-hook)
