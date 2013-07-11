(provide 'ui)

(setq inhibit-startup-screen t)         ; omit startup screen

(menu-bar-mode -1)                      ; hide menubar
(scroll-bar-mode -1)                    ; hide scrollbar
(tool-bar-mode -1)                      ; hide toolbar

(global-linum-mode -1)                  ; do not display line numbers
(column-number-mode t)                  ; display column number in the mode line
(setq size-indication-mode t)           ; display file size in the mode line

(blink-cursor-mode t)                   ; blink cursor

(global-hl-line-mode t)                 ; highlight current line
(setq search-highlight t)               ; highlight incremental search

(global-font-lock-mode t)               ; enable font-lock mode in all buffers

(setq custom-safe-themes t)             ; treat all themes as safe
(add-to-list 'custom-theme-load-path    ; configure path for custom themes
             "~/.emacs.d/vendor/twilight")
(add-to-list 'custom-theme-load-path    ; configure path for custom themes
             "~/.emacs.d/vendor/solarized")
(load-theme 'solarized-dark)            ; load twilight theme
