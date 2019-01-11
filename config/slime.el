;; Superior Lisp Integration Mode for Emacs (SLIME)
(use-package slime
  :ensure t
  :defer t
  :commands slime)
(setq inferior-lisp-program "~/usr/bin/sbcl")
(setq slime-contribs '(slime-fancy))
(load (expand-file-name "~/quicklisp/slime-helper.el"))
