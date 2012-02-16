(provide 'ui)

(load-theme 'deeper-blue)               ; select theme

(setq inhibit-startup-screen t)         ; omit startup screen

(menu-bar-mode t)                       ; display menu bar
(scroll-bar-mode -1)                    ; hide scrollbar
(tool-bar-mode -1)                      ; hide toolbar

(global-linum-mode -1)                  ; do not display line numbers
(column-number-mode t)                  ; display column number in the mode line
(setq size-indication-mode t)           ; display file size in the mode line

(blink-cursor-mode t)                   ; blink cursor

(global-hl-line-mode t)                 ; highlight current line
(setq search-highlight t)               ; highlight incremental search

(global-font-lock-mode t)               ; enable font-lock mode in all buffers
