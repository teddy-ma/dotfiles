(require 'package)

(setq package-user-dir (expand-file-name "./.packages"))

(setq package-archives
      '(("GNU ELPA"     . "https://elpa.gnu.org/packages/")
        ("MELPA Stable" . "https://stable.melpa.org/packages/")
        ("MELPA"        . "https://melpa.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)

(use-package org
  :ensure t)

(use-package htmlize
  :ensure t)

(require 'org)
(require 'htmlize)
(message org-version)
(find-file "config.org")
(org-html-export-to-html)
