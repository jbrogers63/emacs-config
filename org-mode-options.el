;; Force org-mode to add timestamps to todos
(custom-set-variables
 '(org-log-done (quote time) t))

;; log done time
(setq org-log-done 'time)

;; set default agenda files
(setq org-agenda-files (list "~/migrations/s2-migrations.org" "~/org/work.org" "~/org/timetracking.org"))
