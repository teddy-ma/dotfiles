;;; sx-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "sx" "../../../../../.emacs.d/elpa/sx-20180212.1101/sx.el"
;;;;;;  "fe1c2be755ace1868b44b006021bd0e7")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/sx-20180212.1101/sx.el

(autoload 'sx-bug-report "sx" "\
File a bug report about the `sx' package.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "sx-auth" "../../../../../.emacs.d/elpa/sx-20180212.1101/sx-auth.el"
;;;;;;  "8620e1e878b50fdc4dd1466a59cacf19")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/sx-20180212.1101/sx-auth.el

(autoload 'sx-authenticate "sx-auth" "\
Authenticate this application.
Authentication is required to read your personal data (such as
notifications) and to write with the API (asking and answering
questions).

When this function is called, `browse-url' is used to send the
user to an authorization page managed by StackExchange.  The
following privileges are requested:

* read_inbox
    use SX to manage and visit items in your inbox

* write_acesss
    write comments, ask questions, and post answers on your
    behalf

* no_expiry
    do not pester you to reauthorize again

After authorization with StackExchange, the user is then
redirected to a website managed by SX.  The access token required
to use authenticated methods is included in the hash (which is
parsed and displayed prominently on the page).

\(fn)" t nil)

;;;***

;;;### (autoloads nil "sx-inbox" "../../../../../.emacs.d/elpa/sx-20180212.1101/sx-inbox.el"
;;;;;;  "7ba48b21008c929dcfb6450599e7bac0")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/sx-20180212.1101/sx-inbox.el

(autoload 'sx-inbox "sx-inbox" "\
Display a buffer listing inbox items.
With prefix NOTIFICATIONS, list notifications instead of inbox.

\(fn &optional NOTIFICATIONS)" t nil)

(autoload 'sx-inbox-notifications "sx-inbox" "\
Display a buffer listing notification items.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "sx-interaction" "../../../../../.emacs.d/elpa/sx-20180212.1101/sx-interaction.el"
;;;;;;  "bf1256d0c904cf82f21a36464fda8210")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/sx-20180212.1101/sx-interaction.el

(autoload 'sx-open-link "sx-interaction" "\
Visit element given by LINK inside Emacs.
Element can be a question, answer, or comment.

\(fn LINK &optional _)" t nil)

(autoload 'sx-org-get-link "sx-interaction" "\
Add a link to this post to Org's memory.

\(fn)" nil nil)

(autoload 'sx-ask "sx-interaction" "\
Start composing a question for SITE.
SITE is a string, indicating where the question will be posted.

\(fn SITE)" t nil)

;;;***

;;;### (autoloads nil "sx-search" "../../../../../.emacs.d/elpa/sx-20180212.1101/sx-search.el"
;;;;;;  "91660515d77a2316e094fb76303231b1")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/sx-20180212.1101/sx-search.el

(autoload 'sx-search "sx-search" "\
Display search on SITE for question titles containing QUERY.
When TAGS is given, it is a lists of tags, one of which must
match.  When EXCLUDED-TAGS is given, it is a list of tags, none
of which is allowed to match.

Interactively, the user is asked for SITE and QUERY.  With a
prefix argument, the user is asked for everything.

\(fn SITE QUERY &optional TAGS EXCLUDED-TAGS)" t nil)

(autoload 'sx-search-tag-at-point "sx-search" "\
Follow tag under position POS or point.

\(fn &optional POS)" t nil)

;;;***

;;;### (autoloads nil "sx-switchto" "../../../../../.emacs.d/elpa/sx-20180212.1101/sx-switchto.el"
;;;;;;  "0ba967e789b772ef6657d282c510ffc7")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/sx-20180212.1101/sx-switchto.el

(define-prefix-command 'sx-switchto-map)

;;;***

;;;### (autoloads nil "sx-tab" "../../../../../.emacs.d/elpa/sx-20180212.1101/sx-tab.el"
;;;;;;  "7c5341e49f298e2d95f53663e777d820")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/sx-20180212.1101/sx-tab.el

(autoload 'sx-tab-all-questions "sx-tab" nil t)

(autoload 'sx-tab-unanswered "sx-tab" nil t)

(autoload 'sx-tab-unanswered-my-tags "sx-tab" nil t)

(autoload 'sx-tab-featured "sx-tab" nil t)

(autoload 'sx-tab-starred "sx-tab" nil t)

(autoload 'sx-tab-frontpage "sx-tab" nil t)

(autoload 'sx-tab-newest "sx-tab" nil t)

(autoload 'sx-tab-topvoted "sx-tab" nil t)

(autoload 'sx-tab-hot "sx-tab" nil t)

(autoload 'sx-tab-week "sx-tab" nil t)

(autoload 'sx-tab-month "sx-tab" nil t)

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/elpa/sx-20180212.1101/sx-auth.el"
;;;;;;  "../../../../../.emacs.d/elpa/sx-20180212.1101/sx-autoloads.el"
;;;;;;  "../../../../../.emacs.d/elpa/sx-20180212.1101/sx-babel.el"
;;;;;;  "../../../../../.emacs.d/elpa/sx-20180212.1101/sx-button.el"
;;;;;;  "../../../../../.emacs.d/elpa/sx-20180212.1101/sx-cache.el"
;;;;;;  "../../../../../.emacs.d/elpa/sx-20180212.1101/sx-compose.el"
;;;;;;  "../../../../../.emacs.d/elpa/sx-20180212.1101/sx-encoding.el"
;;;;;;  "../../../../../.emacs.d/elpa/sx-20180212.1101/sx-favorites.el"
;;;;;;  "../../../../../.emacs.d/elpa/sx-20180212.1101/sx-filter.el"
;;;;;;  "../../../../../.emacs.d/elpa/sx-20180212.1101/sx-inbox.el"
;;;;;;  "../../../../../.emacs.d/elpa/sx-20180212.1101/sx-interaction.el"
;;;;;;  "../../../../../.emacs.d/elpa/sx-20180212.1101/sx-load.el"
;;;;;;  "../../../../../.emacs.d/elpa/sx-20180212.1101/sx-method.el"
;;;;;;  "../../../../../.emacs.d/elpa/sx-20180212.1101/sx-networks.el"
;;;;;;  "../../../../../.emacs.d/elpa/sx-20180212.1101/sx-notify.el"
;;;;;;  "../../../../../.emacs.d/elpa/sx-20180212.1101/sx-pkg.el"
;;;;;;  "../../../../../.emacs.d/elpa/sx-20180212.1101/sx-question-list.el"
;;;;;;  "../../../../../.emacs.d/elpa/sx-20180212.1101/sx-question-mode.el"
;;;;;;  "../../../../../.emacs.d/elpa/sx-20180212.1101/sx-question-print.el"
;;;;;;  "../../../../../.emacs.d/elpa/sx-20180212.1101/sx-question.el"
;;;;;;  "../../../../../.emacs.d/elpa/sx-20180212.1101/sx-request.el"
;;;;;;  "../../../../../.emacs.d/elpa/sx-20180212.1101/sx-search.el"
;;;;;;  "../../../../../.emacs.d/elpa/sx-20180212.1101/sx-site.el"
;;;;;;  "../../../../../.emacs.d/elpa/sx-20180212.1101/sx-switchto.el"
;;;;;;  "../../../../../.emacs.d/elpa/sx-20180212.1101/sx-tab.el"
;;;;;;  "../../../../../.emacs.d/elpa/sx-20180212.1101/sx-tag.el"
;;;;;;  "../../../../../.emacs.d/elpa/sx-20180212.1101/sx-time.el"
;;;;;;  "../../../../../.emacs.d/elpa/sx-20180212.1101/sx-user.el"
;;;;;;  "../../../../../.emacs.d/elpa/sx-20180212.1101/sx.el") (23211
;;;;;;  39145 653837 427000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; sx-autoloads.el ends here
