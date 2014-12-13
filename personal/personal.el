;;; personal.el --- My personal tweaks

;;; Commentary:

; I prefer 4-space tabs for indentation

;;; Code:

; Use arrow keys. We have them for a reason.
(setq prelude-guru nil)

;;; Always show line numbers
(global-linum-mode 1)

;;; Command is easier to reach than Control on a Mac keyboard
; (setq mac-command-modifier 'control)
; (setq mac-control-modifier 'super)

;;; Smart Tabs
(setq-default tab-width 4)
(setq-default indent-tabs-mode t)
(prelude-require-packages '(smart-tabs-mode))
(smart-tabs-insinuate 'c 'c++ 'java 'javascript 'python 'ruby 'nxml)

;;; Whitespace
(setq whitespace-style '(face empty trailing lines-tail space-after-tab
							  indentation space-before-tab))

;;; Fill Column Indicator
(setq fill-column 80) ; match whitespace-line-column and standard of 80, not 70
(prelude-require-package 'fill-column-indicator)
(add-hook 'prog-mode-hook 'fci-mode)

;;; Use redcarpet for Markdown
(defun markdown-custom ()
  "Hook into markdown-mode to configure the Markdown implementation."
  (setq markdown-command "redcarpet --smarty") ;  TODO: pandoc
  (setq markdown-enable-math t))
(add-hook 'markdown-mode-hook '(lambda () (markdown-custom)))

;;; Groovy
(prelude-require-packages '(groovy-mode))
(add-to-list 'auto-mode-alist '("\\.gradle\\'" . groovy-mode))

(provide 'personal)
;;; personal.el ends here
