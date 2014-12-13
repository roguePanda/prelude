;;; font.el --- Font settings for Emacs on OS X

;;; Commentary:

; There are lots of good programming fonts.
;Some recommended ones include M+ (mplus),
; Input, Source Code Pro, Consolas,
; inconsolata, Menlo, Monaco, and Droid Sans Mono.

;;; Code:

; http://mplus-fonts.sourceforge.jp/mplus-outline-fonts/index-en.html
(when (eq system-type 'darwin)
  (set-face-attribute 'default nil :family "M+ 1mn")

  ;; default font size (point * 10)
  (set-face-attribute 'default nil :height 150))

(provide 'font)
;;; font.el ends here
