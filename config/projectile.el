;; projectile
(use-package projectile
  :ensure t
  :init
  (setq projectile-project-search-path '("~/git/"))
  (setq projectile-require-project-root nil)
  :config
  (projectile-mode +1))
