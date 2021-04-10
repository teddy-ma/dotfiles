#!/bin/bash
#
# I wrapped the code constructed in
#
# http://hacks-galore.org/aleix/blog/archives/2013/01/08/install-emacs-packages-from-command-line
#
# in a single bash script, so I would a single code snippet.
#

# Package to be installed
pkg_name=$1

# Elisp script is created as a temporary file, to be removed after installing 
# the package
elisp_script_name=$(mktemp /tmp/emacs-pkg-install-el.XXXXXX)
elisp_code="
;;
;; Install package from command line. Example:
;;
;;   $ emacs --batch --expr \"(define pkg-to-install 'smex)\" -l emacs-pkg-install.el
;;
(require 'package)
(setq package-archives
      '(("GNU ELPA"     . "https://elpa.gnu.org/packages/")
        ("MELPA Stable" . "https://stable.melpa.org/packages/")
        ("MELPA"        . "https://melpa.org/packages/"))
      package-archive-priorities
      '(("GNU ELPA"     . 10)
        ("MELPA Stable" . 5)
        ("MELPA"        . 0)))
(package-initialize)
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
(setq package-check-signature nil) 
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(package-refresh-contents)

(package-install pkg-to-install)"

echo "$elisp_code" > $elisp_script_name

if [ $# -ne 1 ]
then
  echo "Usage: `basename $0` <package>"
  exit 1
fi

emacs --batch --eval "(defconst pkg-to-install '$pkg_name)" -l $elisp_script_name

# Remove tmp file
rm "$elisp_script_name"