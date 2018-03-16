;;; treemacs-projectile-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "treemacs-projectile" "../../../../../.emacs.d/elpa/treemacs-projectile-20180203.416/treemacs-projectile.el"
;;;;;;  "c08aeb956fcbc995d6cb39a37bda056c")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/treemacs-projectile-20180203.416/treemacs-projectile.el

(autoload 'treemacs-projectile "treemacs-projectile" "\
Open treemacs for the current projectile project.
If not in a project do nothing. If a prefix argument ARG is given select
the project from among `projectile-known-projects'.

\(fn &optional ARG)" t nil)

(autoload 'treemacs-projectile-toggle "treemacs-projectile" "\
If a treemacs buffer exists and is visible hide it.
If a treemacs buffer exists, but is not visible bring it to the foreground
and select it.
If no treemacs buffer exists call `treemacs-projectile'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/elpa/treemacs-projectile-20180203.416/treemacs-projectile-autoloads.el"
;;;;;;  "../../../../../.emacs.d/elpa/treemacs-projectile-20180203.416/treemacs-projectile.el")
;;;;;;  (23211 39028 998550 220000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; treemacs-projectile-autoloads.el ends here
