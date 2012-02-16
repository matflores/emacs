(provide 'editing)

(setq standard-indent 2)                ; indent with 2 spaces
(setq-default tab-width 2)              ; tab inserts 2 spaces
(setq-default indent-tabs-mode nil)     ; use spaces instead of tabs

(setq show-trailing-whitespace t)       ; highlight trailing whitespace
(add-hook 'before-save-hook             ; delete trailing whitespace on save
          'delete-trailing-whitespace)

(delete-selection-mode t)               ; enable delete selection mode
(transient-mark-mode t)                 ; enable transient mark mode

(show-paren-mode t)                     ; highlight matching parens

(setq require-final-newline t)          ; insert newline at the end of the file

(prefer-coding-system 'utf-8)           ; set encoding to utf-8
(set-language-environment 'utf-8)       ;
(set-default-coding-systems 'utf-8)     ;
(set-terminal-coding-system 'utf-8)     ;
(set-selection-coding-system 'utf-8)    ;
