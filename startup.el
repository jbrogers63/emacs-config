;; Don't show the GNU Emacs Startup message
(setq inhibit-startup-message t)

;; Show line numbers
(global-linum-mode 1)
;; Stop annoying cursor blink
(blink-cursor-mode 0)

;; GUI functionality
(when (display-graphic-p)
  (progn
    ;; Remove the scrollbar
    (scroll-bar-mode 0)))

;; Move the backup and temp folders to /tmp
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(custom-set-variables
 ;; Start in full screen
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 ;; Drop the menu bar
 '(menu-bar-mode nil)
 ;; Drop the tool bar
 '(tool-bar-mode nil))
