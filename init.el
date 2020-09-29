(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-language-environment 'utf-8)
(set-selection-coding-system 'utf-8)

(load-theme 'wombat)

(setq make-backup-files nil)
(setq auto-save-default nil)

(setq-default c-basic-offset 4)
(setq c-syntactic-indentation nil)

(column-number-mode 1)

(global-visual-line-mode 1)

(delete-selection-mode 1)

(add-hook 'org-mode-hook 'org-indent-mode)

(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq require-final-newline t)

(setq tex-fontify-script nil)
(add-hook 'tex-mode-hook (lambda () (electric-indent-local-mode -1)))

(add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-16"))
(put 'upcase-region 'disabled nil)

(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-follow-mouse 't)
(setq scroll-step 1)
