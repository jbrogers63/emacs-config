(require 'package)
;; Only run package-initialize when in terminal mode
;;(when (not (display-graphic-p))
;;  (package-initialize))

(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

