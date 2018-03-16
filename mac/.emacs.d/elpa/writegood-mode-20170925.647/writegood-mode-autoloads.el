;;; writegood-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "writegood-mode" "../../../../../.emacs.d/elpa/writegood-mode-20170925.647/writegood-mode.el"
;;;;;;  "721cf19e1400831c54a9ad5e8d75c77a")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/writegood-mode-20170925.647/writegood-mode.el

(autoload 'writegood-reading-ease "writegood-mode" "\
Flesch-Kincaid reading ease test. Scores roughly between 0 and 100.

\(fn &optional START END)" t nil)

(autoload 'writegood-grade-level "writegood-mode" "\
Flesch-Kincaid grade level test. Converts reading ease score to a grade level (Score ~ years of school needed to read passage).

\(fn &optional START END)" t nil)

(autoload 'writegood-mode "writegood-mode" "\
Colorize issues with the writing in the buffer.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/elpa/writegood-mode-20170925.647/writegood-mode-autoloads.el"
;;;;;;  "../../../../../.emacs.d/elpa/writegood-mode-20170925.647/writegood-mode.el")
;;;;;;  (23211 39143 576870 264000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; writegood-mode-autoloads.el ends here
