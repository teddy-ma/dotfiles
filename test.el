(require 'package)

(setq package-user-dir (expand-file-name "./.packages"))

(setq package-archives
      '(("GNU ELPA"     . "https://elpa.gnu.org/packages/")
        ("org"          . "https://orgmode.org/elpa/")
        ("MELPA Stable" . "https://stable.melpa.org/packages/")
        ("MELPA"        . "https://melpa.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)

(setq package-load-list '(all))     ;; List of packages to load
(unless (package-installed-p 'org)  ;; Make sure the Org package is
  (package-install 'org))        ;; installed, install it if not
(unless (package-installed-p 'htmlize)
  (package-install 'htmlize))


(use-package org
  :ensure t)

(use-package htmlize
  :ensure t)
(setq org-html-head-include-default-style nil)
(setq org-html-htmlize-output-type 'inline-css)
(message org-version)
(find-file "config.org")
(org-html-export-to-html)
