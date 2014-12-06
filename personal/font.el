;;; font.el --- Font settings for Emacs on OS X

;;; Commentary:

; There are lots of good programming fonts.
;Some recommended ones include M+ (mplus),
; Input, Source Code Pro, Consolas,
; inconsolata, Menlo, Monaco, and Droid Sans Mono.

;;; Code:

(when (eq system-type 'darwin)
  (set-face-attribute 'default nil :family "DejaVu Sans Mono")

  ;; default font size (point * 10)
  (set-face-attribute 'default nil :height 140))

(provide 'font)
;;; font.el ends here
