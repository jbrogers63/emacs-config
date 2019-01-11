(use-package auto-complete-config
  :ensure auto-complete
  :demand t
  :bind ("M-<tab>" . my--auto-complete)
  :init
  (defun my--auto-complete ()
    (interactive)
    (unless (boundp 'auto-complete-mode)
      (global-auto-complete-mode 1))
    (auto-complete)))
