;;; env.el --- Set up environment variables from the user shell

;;; Commentary:

; Depending on how Emacs is started, it may not have the same environment
; variables as the user shell. This is especially common with the OS X GUI
; launcher.

;;; Code:

(prelude-require-package 'exec-path-from-shell)

(exec-path-from-shell-initialize)

; Go variables
(exec-path-from-shell-copy-env "GOPATH")

(provide 'env)
;;; env.el ends here
