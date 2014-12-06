;;; text.el --- Make text editing more pleasant in Emacs

;;; Commentary:

; text.el adds assorted features to make Emacs a better environment
; for editing bulk text. This includes:
; - Spell checking
; - Line wrapping
; - Grammar checking

;;; Code:

;; Line Wrapping
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; Spellcheck
;; Partly from http://blog.binchen.org/posts/what-s-the-best-spell-check-set-up-in-emacs.html

;;(cond
;; ((executable-find "aspell")
;;  (setq ispell-program-name "aspell")
;;  (setq ispell-really-aspell t))
;; ((executable-find "hunspell")
;;  (setq ispell-program-name (executable-find "hunspell"))
;;  (setq ispell-really-hunspell t)
;; (t (setq ispell-program-name nil)))
(when (executable-find "hunspell")
  (setq ispell-program-name "hunspell")
  (setq ispell-really-hunspell t))

(add-hook 'text-mode-hook 'flyspell-mode-on)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)

;; Grammar check via langtool
(prelude-require-packages '(langtool))
(setq langtool-language-tool-jar "/usr/local/opt/languagetool/libexec/languagetool-commandline.jar"
	  langtool-mother-tongue "en"
	  langtool-disabled-rules '("WHITESPACE_RULE" "COMMA_PARENTHESIS_WHITESPACE" "EN_QUOTES" "EN_UNPAIRED_BRACKETS"))

(provide 'text)
;;; text.el ends here
