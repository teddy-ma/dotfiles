;;; elixir-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "elixir-mode" "../../../../../.emacs.d/elpa/elixir-mode-20170918.2231/elixir-mode.el"
;;;;;;  "04f556e66952b813624c366915ed1d61")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/elixir-mode-20170918.2231/elixir-mode.el

(autoload 'elixir-mode-open-github "elixir-mode" "\
Elixir mode open GitHub page.

\(fn)" t nil)

(autoload 'elixir-mode-open-elixir-home "elixir-mode" "\
Elixir mode go to language home.

\(fn)" t nil)

(autoload 'elixir-mode-open-docs-master "elixir-mode" "\
Elixir mode go to master documentation.

\(fn)" t nil)

(autoload 'elixir-mode-open-docs-stable "elixir-mode" "\
Elixir mode go to stable documentation.

\(fn)" t nil)

(autoload 'elixir-mode-version "elixir-mode" "\
Get the Elixir-Mode version as string.

If called interactively or if SHOW-VERSION is non-nil, show the
version in the echo area and the messages buffer.

The returned string includes both, the version from package.el
and the library version, if both a present and different.

If the version number could not be determined, signal an error,
if called interactively, or if SHOW-VERSION is non-nil, otherwise
just return nil.

\(fn &optional SHOW-VERSION)" t nil)

(autoload 'elixir-mode "elixir-mode" "\
Major mode for editing Elixir code.

\\{elixir-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.elixir\\'" . elixir-mode))

(add-to-list 'auto-mode-alist '("\\.ex\\'" . elixir-mode))

(add-to-list 'auto-mode-alist '("\\.exs\\'" . elixir-mode))

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/elpa/elixir-mode-20170918.2231/elixir-mode-autoloads.el"
;;;;;;  "../../../../../.emacs.d/elpa/elixir-mode-20170918.2231/elixir-mode-pkg.el"
;;;;;;  "../../../../../.emacs.d/elpa/elixir-mode-20170918.2231/elixir-mode.el"
;;;;;;  "../../../../../.emacs.d/elpa/elixir-mode-20170918.2231/elixir-smie.el")
;;;;;;  (23211 39128 576152 523000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; elixir-mode-autoloads.el ends here
