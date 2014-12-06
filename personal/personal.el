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

;;; Tab Settings
(setq tab-width 4)
(setq indent-tabs-mode t)

;;; Use redcarpet for Markdown
(defun markdown-custom ()
  "Hook into markdown-mode to configure the Markdown implementation."
  (setq markdown-command "redcarpet --smarty") ;  TODO: pandoc
  (setq markdown-enable-math t))
(add-hook 'markdown-mode-hook '(lambda () (markdown-custom)))

(provide 'personal)
;;; personal.el ends here
