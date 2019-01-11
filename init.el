(setq indent-tab-mode nil)

(defun load-configs (config-files)
  "Load all files from a list of files"
  (dolist (file config-files)
    (load-file file)))

;; Emacs config root
(setq emacs-config-dir "~/.emacs.d/")

;; Third Party config root
(setq extra-config-dir "config/")

;; Configure how Emacs starts up
(setq startup-files (mapcar (lambda (item) (concat emacs-config-dir item))
			    (list "startup.el"
				  "org-mode-options.el"
				  "theme.el")))

;; Install and configure third party packages
(setq config-dot-files (mapcar (lambda (item)
			  (concat emacs-config-dir extra-config-dir item))
			(list "setup-packages.el"
			      "exec-path-from-shell.el"
			      "autopair.el"
			      "neotree.el"
			      "projectile.el"
			      "slime.el"
			      "jedi.el"
			      "auto-complete-mode.el"
			      "which-key.el")))

(setq all-config-files
      (list startup-files
	    config-dot-files))

(dolist (configs all-config-files) (load-configs configs))

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes '(wombat))
 '(initial-frame-alist '((fullscreen . maximized)))
 '(menu-bar-mode nil)
 '(org-log-done 'time t)
 '(package-selected-packages
   '(exec-path-from-shell jedi-direx jedi which-key use-package slime projectile paredit neotree autopair))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
