;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Hide useless GUI components
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; Don't bother me with the welcome page
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;; Use UTF-8
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-language-environment 'utf-8)
(set-selection-coding-system 'utf-8)

;; Disable those annoying backup files
(setq make-backup-files nil)
(setq auto-save-default nil)

;; Show line and column number
(column-number-mode 1)

;; Wrap lines
(global-visual-line-mode 1)

;; Delete selected text with backspace
(delete-selection-mode 1)

;; Use whitespace instead of tabs
(setq-default indent-tabs-mode nil)

;; Delete trailing whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Require a final newline
(setq require-final-newline t)

;; Improve scrolling
(pixel-scroll-mode 1)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-follow-mouse 't)
(setq scroll-step 1)

;; Show matching parentheses
(show-paren-mode 1)

(put 'downcase-region 'disabled nil) ; Enable C-X C-L
(put 'upcase-region 'disabled nil)   ; Enable C-X C-U

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; C/C++

(setq-default c-basic-offset 4)

(setq c-default-style "java")

(setq cmake-tab-width 4)

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; LaTeX

;; Disable ugly math expressions
(setq tex-fontify-script nil)

;; I don't want indentation in my TeX files
(add-hook 'tex-mode-hook (lambda () (electric-indent-local-mode -1)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Org Mode

;; Enable some fancy mouse features
(require 'org-mouse)

(add-hook 'org-mode-hook 'org-indent-mode)

(setq org-html-postamble nil)

(setq org-support-shift-select t)

(setq org-format-latex-options
      '(:scale 1.2
        :foreground default
        :background default))

(setq org-hide-emphasis-markers t)

(setq org-image-actual-width nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Configure MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Don't litter my init.el with package stuff
(setq custom-file "~/.emacs.d/custom.el")
(if (not (file-exists-p custom-file)) (make-empty-file custom-file))
(load custom-file)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Load the editor theme if installed, use fallback if not
(if (package-installed-p 'atom-one-dark-theme) (load-theme 'atom-one-dark t) (load-theme 'wombat))
