;;; ensime-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "ensime" "ensime.el" (0 0 0 0))
;;; Generated autoloads from ensime.el

(autoload 'ensime "ensime" "\
Read config file for settings then start an ensime-server and connect.

\(fn)" t nil)

(autoload 'ensime-remote "ensime" "\
Read config file for settings. Then connect to an existing ENSIME server.

\(fn HOST PORT)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ensime" '("ensime-p")))

;;;***

;;;### (autoloads nil "ensime-auto-complete" "ensime-auto-complete.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ensime-auto-complete.el

(autoload 'ensime-ac-enable "ensime-auto-complete" "\


\(fn)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ensime-auto-complete" '("ensime-")))

;;;***

;;;### (autoloads nil "ensime-client" "ensime-client.el" (0 0 0 0))
;;; Generated autoloads from ensime-client.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ensime-client" '("ensime-")))

;;;***

;;;### (autoloads nil "ensime-comint-utils" "ensime-comint-utils.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ensime-comint-utils.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ensime-comint-utils" '("ensime-comint-")))

;;;***

;;;### (autoloads nil "ensime-company" "ensime-company.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from ensime-company.el

(autoload 'ensime-company-enable "ensime-company" "\


\(fn)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ensime-company" '("ensime-")))

;;;***

;;;### (autoloads nil "ensime-completion-util" "ensime-completion-util.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ensime-completion-util.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ensime-completion-util" '("ensime-")))

;;;***

;;;### (autoloads nil "ensime-config" "ensime-config.el" (0 0 0 0))
;;; Generated autoloads from ensime-config.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ensime-config" '("ensime-")))

;;;***

;;;### (autoloads nil "ensime-debug" "ensime-debug.el" (0 0 0 0))
;;; Generated autoloads from ensime-debug.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ensime-debug" '("ensime-")))

;;;***

;;;### (autoloads nil "ensime-doc" "ensime-doc.el" (0 0 0 0))
;;; Generated autoloads from ensime-doc.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ensime-doc" '("ensime-")))

;;;***

;;;### (autoloads nil "ensime-editor" "ensime-editor.el" (0 0 0 0))
;;; Generated autoloads from ensime-editor.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ensime-editor" '("ensime-")))

;;;***

;;;### (autoloads nil "ensime-eldoc" "ensime-eldoc.el" (0 0 0 0))
;;; Generated autoloads from ensime-eldoc.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ensime-eldoc" '("ensime-eldoc-")))

;;;***

;;;### (autoloads nil "ensime-expand-region" "ensime-expand-region.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ensime-expand-region.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ensime-expand-region" '("ensime-expand-region-")))

;;;***

;;;### (autoloads nil "ensime-helm" "ensime-helm.el" (0 0 0 0))
;;; Generated autoloads from ensime-helm.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ensime-helm" '("ensime-helm-")))

;;;***

;;;### (autoloads nil "ensime-http" "ensime-http.el" (0 0 0 0))
;;; Generated autoloads from ensime-http.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ensime-http" '("ensime-")))

;;;***

;;;### (autoloads nil "ensime-inf" "ensime-inf.el" (0 0 0 0))
;;; Generated autoloads from ensime-inf.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ensime-inf" '("ensime-")))

;;;***

;;;### (autoloads nil "ensime-ivy" "ensime-ivy.el" (0 0 0 0))
;;; Generated autoloads from ensime-ivy.el

(autoload 'ensime-search-ivy "ensime-ivy" "\
Search ensime with ivy.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ensime-ivy" '("ensime-ivy-")))

;;;***

;;;### (autoloads nil "ensime-macros" "ensime-macros.el" (0 0 0 0))
;;; Generated autoloads from ensime-macros.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ensime-macros" '("ensime-" "with-struct" "destructure-case")))

;;;***

;;;### (autoloads nil "ensime-mode" "ensime-mode.el" (0 0 0 0))
;;; Generated autoloads from ensime-mode.el

(autoload 'ensime-mode "ensime-mode" "\
ENSIME: The ENhanced Scala Interaction Mode for Emacs (minor-mode).
\\{ensime-mode-map}

\(fn &optional ARG)" t nil)

(add-hook 'scala-mode-hook (lambda nil (when (fboundp 'ensime) (ensime-mode))))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ensime-mode" '("ensime-")))

;;;***

;;;### (autoloads nil "ensime-model" "ensime-model.el" (0 0 0 0))
;;; Generated autoloads from ensime-model.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ensime-model" '("ensime-")))

;;;***

;;;### (autoloads nil "ensime-notes" "ensime-notes.el" (0 0 0 0))
;;; Generated autoloads from ensime-notes.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ensime-notes" '("ensime-")))

;;;***

;;;### (autoloads nil "ensime-overlay" "ensime-overlay.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from ensime-overlay.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ensime-overlay" '("ensime-")))

;;;***

;;;### (autoloads nil "ensime-popup" "ensime-popup.el" (0 0 0 0))
;;; Generated autoloads from ensime-popup.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ensime-popup" '("ensime-")))

;;;***

;;;### (autoloads nil "ensime-refactor" "ensime-refactor.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from ensime-refactor.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ensime-refactor" '("ensime-")))

;;;***

;;;### (autoloads nil "ensime-sbt" "ensime-sbt.el" (0 0 0 0))
;;; Generated autoloads from ensime-sbt.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ensime-sbt" '("ensime-")))

;;;***

;;;### (autoloads nil "ensime-search" "ensime-search.el" (0 0 0 0))
;;; Generated autoloads from ensime-search.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ensime-search" '("ensime-search")))

;;;***

;;;### (autoloads nil "ensime-semantic-highlight" "ensime-semantic-highlight.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ensime-semantic-highlight.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ensime-semantic-highlight" '("ensime-sem-high-")))

;;;***

;;;### (autoloads nil "ensime-stacktrace" "ensime-stacktrace.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ensime-stacktrace.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ensime-stacktrace" '("ensime-stacktrace-")))

;;;***

;;;### (autoloads nil "ensime-startup" "ensime-startup.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from ensime-startup.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ensime-startup" '("ensime-")))

;;;***

;;;### (autoloads nil "ensime-ui" "ensime-ui.el" (0 0 0 0))
;;; Generated autoloads from ensime-ui.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ensime-ui" '("ensime-")))

;;;***

;;;### (autoloads nil "ensime-undo" "ensime-undo.el" (0 0 0 0))
;;; Generated autoloads from ensime-undo.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ensime-undo" '("ensime-undo-")))

;;;***

;;;### (autoloads nil "ensime-util" "ensime-util.el" (0 0 0 0))
;;; Generated autoloads from ensime-util.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ensime-util" '("ensime-" "buffer-file-name-with-indirect")))

;;;***

;;;### (autoloads nil "ensime-vars" "ensime-vars.el" (0 0 0 0))
;;; Generated autoloads from ensime-vars.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ensime-vars" '("ensime-")))

;;;***

;;;### (autoloads nil nil ("ensime-compat.el" "ensime-pkg.el") (0
;;;;;;  0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; ensime-autoloads.el ends here
