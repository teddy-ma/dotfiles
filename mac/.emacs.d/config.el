(defun find-config ()
  "Edit config.org"
  (interactive)
  (find-file "~/.emacs.d/config.org"))
(defun reload-config()
  "Reload config.org"
  (interactive)
  (org-babel-load-file (expand-file-name "~/.emacs.d/config.org")))

(global-set-key (kbd "C-c I") 'find-config)
(global-set-key (kbd "C-c R") 'reload-config)

(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))

  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;; org
  (add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
  ;; yasnippet collection
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t))
(package-initialize)
(setq package-enable-at-startup nil)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(setq use-package-always-ensure t)

(use-package auto-package-update
  :config
  (setq auto-package-update-delete-old-versions t)
  (setq auto-package-update-hide-results t)
  (auto-package-update-maybe))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

(setq user-full-name "Teddy Ma"
      user-mail-address "mlc880926@gmail.com")

(setq inhibit-startup-screen t)

(setq mac-command-modifier 'meta
      mac-option-modifier 'meta)

(global-visual-line-mode 1)

(tool-bar-mode -1)
(scroll-bar-mode -1)

(defalias 'yes-or-no-p 'y-or-n-p)

(setq make-backup-file nil)
(setq auto-save-default nil)

(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
      backup-by-copying t    ; Don't delink hardlinks
      version-control t      ; Use version numbers on backups
      delete-old-versions t  ; Automatically delete excess backups
      kept-new-versions 20   ; how many of the newest versions to keep
      kept-old-versions 5    ; and how many of the old
      )

(global-auto-revert-mode t)

(use-package crux
  :ensure t
  :bind (("C-a" . crux-move-beginning-of-line)
         ("C-c r" . crux-rename-file-and-buffer)
         ("C-c D" . crux-delete-file-and-buffer))
)

(use-package smart-hungry-delete
  :ensure t
  :bind (("<backspace>" . smart-hungry-delete-backward-char)
         ("C-d" . smart-hungry-delete-forward-char))
  :defer nil ;; dont defer so we can add our functions to hooks
  :config (smart-hungry-delete-add-default-hooks))

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(use-package smex
  :ensure t)
(use-package flx
  :ensure t)
(use-package ivy
  :ensure t
  :config
  (ivy-mode t))

(use-package counsel
  :ensure t
  :bind
  (("M-x" . counsel-M-x))
  :config
  (setq ivy-re-builders-alist
        '((ivy-switch-buffer . ivy--regex-plus)
          (t . ivy--regex-fuzzy)))
  (setq ivy-initial-inputs-alist nil))

(use-package swiper
  :ensure t
  :bind (("M-s" . swiper)))

(use-package ivy-hydra
  :ensure t)

(use-package which-key
  :ensure t
  :diminish which-key-mode
  :config
  (add-hook 'after-init-hook 'which-key-mode))

(use-package undo-tree
  :ensure t
  :diminish undo-tree-mode:
  :config
  (global-undo-tree-mode 1))

(use-package expand-region
  :ensure t
  :bind ("C-=" . er/expand-region))

(use-package multiple-cursors
  :ensure t
  :config
  (global-unset-key (kbd "M-<down-mouse-1>"))
  (global-set-key (kbd "M-<mouse-1>") 'mc/add-cursor-on-click)
  (global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
  (global-set-key (kbd "C->") 'mc/mark-next-like-this)
  (global-set-key (kbd "C-<") 'mc/mark-previous-like-this))

(use-package switch-window
  :ensure t
  :config
  (setq switch-window-input-style 'minibuffer)
  (setq switch-window-increase 4)
  (setq switch-window-threshod 2)
  (setq switch-window-shortcut-style 'qwerty)
  (setq switch-window-qwerty-shortcuts
        '("a" "s" "d" "f" "j" "k" "l"))
  :bind
  ([remap other-window] . switch-window))

(use-package treemacs
  :ensure t
  :defer t
  :init
  (with-eval-after-load 'winum
    (define-key winum-keymap (kbd "M-0") #'treemacs-select-window))
  :config
  (progn
    (use-package treemacs-evil
      :ensure t
      :demand t)
    (setq treemacs-change-root-without-asking nil
          treemacs-collapse-dirs              (if (executable-find "python") 3 0)
          treemacs-file-event-delay           5000
          treemacs-follow-after-init          t
          treemacs-follow-recenter-distance   0.1
          treemacs-goto-tag-strategy          'refetch-index
          treemacs-indentation                2
          treemacs-indentation-string         " "
          treemacs-is-never-other-window      nil
          treemacs-never-persist              nil
          treemacs-no-png-images              nil
          treemacs-recenter-after-file-follow nil
          treemacs-recenter-after-tag-follow  nil
          treemacs-show-hidden-files          t
          treemacs-silent-filewatch           nil
          treemacs-silent-refresh             nil
          treemacs-sorting                    'alphabetic-desc
          treemacs-tag-follow-cleanup         t
          treemacs-tag-follow-delay           1.5
          treemacs-width                      35)

    (treemacs-follow-mode t)
    (treemacs-filewatch-mode t)
    (pcase (cons (not (null (executable-find "git")))
                 (not (null (executable-find "python3"))))
      (`(t . t)
       (treemacs-git-mode 'extended))
      (`(t . _)
       (treemacs-git-mode 'simple))))
  )

(use-package treemacs-projectile
  :defer t
  :ensure t
  :config
  (setq treemacs-header-function #'treemacs-projectile-create-header)
  )

(set-face-attribute 'default nil
                    :family "Hack Nerd Font"
                    :height 160
                    :weight 'normal)

(use-package emojify
  :ensure t)

(use-package solarized-theme
  :ensure t
  :init
  (load-theme 'solarized-dark t))

(global-hl-line-mode 1)

(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(use-package beacon
  :ensure t
  :init
  (beacon-mode 1))

(blink-cursor-mode -1)  ;; Turn off the blinking cursor

(setq-default indent-tabs-mode nil)
(setq-default indent-tabs-mode nil)
(setq-default indicate-empty-lines t)

;; Don't count two spaces after a period as the end of a sentence.
;; Just one space is needed.
(setq sentence-end-double-space nil)

;; delete the region when typing, just like as we expect nowadays.
(delete-selection-mode t)

(show-paren-mode t)

(column-number-mode t)

(global-visual-line-mode)

(setq uniquify-buffer-name-style 'forward)

;; -i gets alias definitions from .bash_profile
(setq shell-command-switch "-ic")

;; Don't beep at me
(setq visible-bell nil)

(setq battery-mode-line-format "[%b%p%% %t]")

(use-package smartparens
  :ensure t
  :diminish smartparens-mode
  :config
  (add-hook 'prog-mode-hook 'smartparens-mode))

(use-package rainbow-delimiters
  :ensure t
  :config
  (add-hook 'prog-mode-hook 'rainbow-delimiters-mode))

(use-package rainbow-mode
  :ensure t
  :config
  (setq rainbow-x-colors nil)
  (add-hook 'prog-mode-hook 'rainbow-mode))

(use-package aggressive-indent
    :ensure t)

(add-hook 'prog-mode-hook 'electric-pair-mode)

(use-package smart-dash
  :ensure t
  :config
  (add-hook 'python-mode-hook 'smart-dash-mode))

(use-package projectile
  :ensure t
  :config
  (setq projectile-enable-caching t)
  (projectile-mode))

(setq projectile-completion-system 'ivy)

(use-package counsel-projectile
  :ensure t
  :config
  (add-hook 'after-init-hook 'counsel-projectile-mode))

(use-package fzf
  :ensure t)

(use-package exec-path-from-shell
  :ensure t
  :config
  (exec-path-from-shell-initialize))

(use-package dumb-jump
  :ensure t
  :diminish dumb-jump-mode
  :bind (("C-M-g" . dumb-jump-go)
         ("C-M-p" . dumb-jump-back)
         ("C-M-q" . dumb-jump-quick-look)))

(use-package magit
  :ensure t
  :bind ("C-x g" . magit-status))

(use-package git-gutter
  :ensure t
  :diminish git-gutter-mode
  :config
  (global-git-gutter-mode 't))

(use-package git-timemachine
  :ensure t)

(use-package flycheck
  :ensure t
  :config
  (add-hook 'after-init-hook 'global-flycheck-mode)
  (add-to-list 'flycheck-checkers 'proselint)
  (setq-default flycheck-highlighting-mode 'lines)
  ;; Define fringe indicator / warning levels
  (define-fringe-bitmap 'flycheck-fringe-bitmap-ball
    (vector #b00000000
            #b00000000
            #b00000000
            #b00000000
            #b00000000
            #b00000000
            #b00000000
            #b00011100
            #b00111110
            #b00111110
            #b00111110
            #b00011100
            #b00000000
            #b00000000
            #b00000000
            #b00000000
            #b00000000))
  (flycheck-define-error-level 'error
    :severity 2
    :overlay-category 'flycheck-error-overlay
    :fringe-bitmap 'flycheck-fringe-bitmap-ball
    :fringe-face 'flycheck-fringe-error)
  (flycheck-define-error-level 'warning
    :severity 1
    :overlay-category 'flycheck-warning-overlay
    :fringe-bitmap 'flycheck-fringe-bitmap-ball
    :fringe-face 'flycheck-fringe-warning)
  (flycheck-define-error-level 'info
    :severity 0
    :overlay-category 'flycheck-info-overlay
    :fringe-bitmap 'flycheck-fringe-bitmap-ball
    :fringe-face 'flycheck-fringe-info))

(flycheck-define-checker proselint
  "A linter for prose."
  :command ("proselint" source-inplace)
  :error-patterns
  ((warning line-start (file-name) ":" line ":" column ": "
            (id (one-or-more (not (any " "))))
            (message (one-or-more not-newline)
                     (zero-or-more "\n" (any " ") (one-or-more not-newline)))
            line-end))
  :modes (text-mode markdown-mode gfm-mode org-mode))

(use-package company
  :ensure t
  :diminish
  :config
  (add-hook 'after-init-hook 'global-company-mode)

  (setq company-idle-delay t)

  (use-package company-go
    :ensure t
    :config
    (add-to-list 'company-backends 'company-go))

  (use-package company-anaconda
    :ensure t
    :config
    (add-to-list 'company-backends 'company-anaconda)))

(setq company-dabbrev-downcase nil)

(use-package yasnippet
  :ensure t
  :diminish yas-minor-mode
  :config
  (add-to-list 'yas-snippet-dirs "~/.emacs.d/yasnippet-snippets")
  (add-to-list 'yas-snippet-dirs "~/.emacs.d/snippets")
  (yas-global-mode 1)
  (global-set-key (kbd "M-/") 'company-yasnippet))

(use-package yasnippet-snippets
  :ensure t)

(setq-default js-indent-level 2)

(use-package js2-mode
  :ensure t
  :mode "\\.js\\'"
  :config
  (setq-default js2-ignored-warnings '("msg.extra.trailing.comma")))

(use-package js2-refactor
  :ensure t
  :config
  (js2r-add-keybindings-with-prefix "C-c C-m")
  (add-hook 'js2-mode-hook 'js2-refactor-mode))

(use-package rjsx-mode
  :ensure t)

(use-package prettier-js
  :ensure t
  :config
  (setq prettier-js-args '(
                        "--trailing-comma" "es5"
                        "--single-quote" "true"
                        "--print-width" "100"
                        ))
  (add-hook 'js2-mode-hook 'prettier-js-mode)
  (add-hook 'rjsx-mode-hook 'prettier-js-mode))

(use-package web-mode
  :ensure t
  :mode (("\\.html\\'" . web-mode)
         ("\\.erb\\'" . web-mode))
  :config
  (setq web-mode-markup-indent-offset 2)
  )

(use-package web-beautify
  :ensure t
  :bind (:map web-mode-map
         ("C-c b" . web-beautify-html)
         :map js2-mode-map
         ("C-c b" . web-beautify-js)))

(use-package yaml-mode
  :ensure t)

(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))

(use-package lua-mode
  :ensure t)

(use-package haskell-mode
  :ensure t)

(use-package hindent
  :ensure t)

(use-package ghc
  :ensure t
  :config
  (add-hook 'haskell-mode-hook (lambda () (ghc-init))))
(use-package company-ghc
  :ensure t
  :config
  (add-to-list 'company-backends 'company-ghc))

(use-package intero
  :ensure t
  :config
  (add-hook 'haskell-mode-hook 'intero-mode))

(use-package elixir-mode
  :ensure t
  :config

  (use-package alchemist
    :ensure t))

(use-package robe
  :ensure t
  :config
  (add-hook 'ruby-mode-hook 'robe-mode))

(use-package irony
  :ensure t
  :hook (c-mode . irony-mode))

(use-package company-irony
  :ensure t
  :config
  (add-to-list 'company-backends 'company-irony))

(use-package flycheck-irony
  :ensure t
  :hook (flycheck-mode . flycheck-irony-setup))

(use-package scala-mode
  :interpreter
  ("scala" . scala-mode))

(use-package ensime
  :ensure t
  :config
  (add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
  (add-hook 'ruby-mode-hook 'robe-mode))

(use-package rust-mode
  :ensure t )

(setq org-startup-indented 'f)
(setq org-special-ctrl-a/e 't)
(setq org-src-fontify-natively 't)
(setq org-src-tab-acts-natively t)
(setq org-src-window-setup 'current-window)

(use-package org
    :ensure org-plus-contrib)

(use-package dashboard
  :config
  (dashboard-setup-startup-hook))

(setq org-todo-keywords
      '((sequence "TODO" "DOING" "|" "DONE" "BLOCKED")))

(set-register ?b (cons 'file "~/Documents/blog.org"))
(set-register ?t (cons 'file "~/Documents/todo.org"))
(set-register ?n (cons 'file "~/Documents/note.org"))

(with-eval-after-load 'org
  (org-babel-do-load-languages 'org-babel-load-languages '((ruby . t)
                                                           (plantuml . t)
                                                           )))

(use-package org-download
  :ensure t
  :config
  (setq-default org-download-image-dir "~/Documents/assets")
  (add-hook 'dired-mode-hook 'org-download-enable))

(setq org-agenda-files (list "~/Documents/blog.org"
                             ;; note should not have todo "~/Documents/note.org"
                             "~/Documents/todo.org"))

(use-package ox-gfm
  :ensure t
  :after ox
  :config
  (custom-set-variables '(org-export-initial-scope 'subtree)
                        '(org-export-with-toc nil)
                        '(org-export-headline-levels 4)
                        ))

(use-package plantuml-mode
  :ensure t)

(add-to-list
 'org-src-lang-modes '("plantuml" . plantuml))

;; brew install plantuml
(setq org-plantuml-jar-path "/usr/local/Cellar/plantuml/1.2018.8/libexec/plantuml.jar")

(use-package org-trello
  :ensure t
  :config
  (custom-set-variables '(org-trello-files '("~/Documents/trello.org"))))

(use-package writegood-mode
  :ensure t
  :bind ("C-c g" . writegood-mode)
  :config
  (add-to-list 'writegood-weasel-words "actionable"))

(use-package writeroom-mode
  :ensure t
  :config
  (setq writeroom-width 140))

(abbrev-mode t)
;; ~/.emacs.d/abbrev_defs

(use-package sx
  :ensure t
  :config
  (bind-keys :prefix "C-c s"
             :prefix-map my-sx-map
             :prefix-docstring "Global keymap for SX."
             ("q" . sx-tab-all-questions)
             ("i" . sx-inbox)
             ("o" . sx-open-link)
             ("u" . sx-tab-unanswered-my-tags)
             ("a" . sx-ask)
             ("s" . sx-search)))

(use-package pyim
  :ensure t
  :demand t
  :config
  ;; 激活 basedict 拼音词库
  (use-package pyim-basedict
    :ensure nil
    :config (pyim-basedict-enable))

  (setq default-input-method "pyim")

  (setq pyim-default-scheme 'quanpin)

  ;; 设置 pyim 探针设置，这是 pyim 高级功能设置，可以实现 *无痛* 中英文切换 :-)
  ;; 我自己使用的中英文动态切换规则是：
  ;; 1. 光标只有在注释里面时，才可以输入中文。
  ;; 2. 光标前是汉字字符时，才能输入中文。
  ;; 3. 使用 M-j 快捷键，强制将光标前的拼音字符串转换为中文。
  (setq-default pyim-english-input-switch-functions
                '(pyim-probe-dynamic-english
                  pyim-probe-isearch-mode
                  pyim-probe-program-mode
                  pyim-probe-org-structure-template))

  (setq-default pyim-punctuation-half-width-functions
                '(pyim-probe-punctuation-line-beginning
                  pyim-probe-punctuation-after-punctuation))

  ;; 开启拼音搜索功能
  ;; (pyim-isearch-mode 1)

  ;; 使用 pupup-el 来绘制选词框, 如果用 emacs26, 建议设置
  ;; 为 'posframe, 速度很快并且菜单不会变形，不过需要用户
  ;; 手动安装 posframe 包。
  (setq pyim-page-tooltip 'popup)

  ;; 选词框显示5个候选词
  (setq pyim-page-length 5)

  ;; 让 Emacs 启动时自动加载 pyim 词库
  (add-hook 'emacs-startup-hook
            #'(lambda () (pyim-restart-1 t)))
  :bind
  (("M-j" . pyim-convert-code-at-point) ;与 pyim-probe-dynamic-english 配合
   ("C-;" . pyim-delete-word-from-personal-buffer)))
