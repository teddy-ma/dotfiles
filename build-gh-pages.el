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

(setq package-load-list '(all))
(unless (package-installed-p 'org)
  (package-install 'org))
(unless (package-installed-p 'htmlize)
  (package-install 'htmlize))

(use-package org :ensure t)

(use-package htmlize :ensure t)

(setq org-html-head-include-default-style nil
      org-html-htmlize-output-type 'css
      org-publish-timestamp-directory "./.org-cache/")

(find-file "config.org")
(org-html-export-to-html)

(find-file "dotfiles.org")
(org-html-export-to-html)
