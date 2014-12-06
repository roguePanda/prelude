;;; Code

;;; Use arrow keys. We have them for a reason.
(setq prelude-guru nil)

;;; Always show line numbers
(global-linum-mode 1)

;;; Command is easier to reach than Control on a Mac keyboard
; (setq mac-command-modifier 'control)
; (setq mac-control-modifier 'super)

;;; Use redcarpet for Markdown
(defun markdown-custom ()
  "markdown-mode-hook"
  (setq markdown-command "redcarpet --smarty") # TODO: pandoc
  (setq markdown-enable-math t))
(add-hook 'markdown-mode-hook '(lambda () (markdown-custom)))

(provide 'personal)
;;; personal.el ends here
