;;; company-irony-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "company-irony" "../../../../../.emacs.d/elpa/company-irony-20170905.1346/company-irony.el"
;;;;;;  "eae55fa8aa0efede5c05b2c7a3d7dc59")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/company-irony-20170905.1346/company-irony.el

(autoload 'company-irony "company-irony" "\


\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(autoload 'company-irony-setup-begin-commands "company-irony" "\
Include irony trigger commands to `company-begin-commands'.

This allow completion to be automatically triggered after member
accesses (obj.|, obj->|, ...).

This may be useful to company < `0.8.4', newer version of company
include these commands by default.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/elpa/company-irony-20170905.1346/company-irony-autoloads.el"
;;;;;;  "../../../../../.emacs.d/elpa/company-irony-20170905.1346/company-irony.el")
;;;;;;  (23211 39138 150937 759000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; company-irony-autoloads.el ends here
