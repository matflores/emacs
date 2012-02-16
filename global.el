(provide 'global)

(setq auto-save-default nil)            ; disable auto-save files (#foo#)
(setq backup-inhibited t)               ; disable backup files (foo~)
(setq auto-save-list-file-prefix nil)   ; disable auto-save-list/.saves

(setq yes-or-no-p 'y-or-n-p)            ; use y/n instead of yes/no

(setq ring-bell-function 'ignore)       ; disable bell
(setq visible-bell nil)                 ; disable visual bell

(global-auto-revert-mode 1)             ; reload files from disk when changed

(setq tags-file-name "TAGS")            ; define tags file name

(require 'saveplace)
(setq-default save-place t)             ; save cursor position within files
(setq save-place-file                   ; on the .saveplace file
      "~/.emacs.d/.saveplace")

(savehist-mode t)                       ; save minibuffer history across sessions
(setq savehist-file                     ; on the .savehist file
      "~/.emacs.d/.savehist")
