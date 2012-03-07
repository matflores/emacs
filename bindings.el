(provide 'bindings)

(global-set-key (kbd "s-o") 'find-file)         ; open file
(global-set-key (kbd "s-w") 'close-buffer)      ; close current buffer
(global-set-key (kbd "s-k") 'kill-this-buffer)  ; close current buffer

(global-set-key [s-up]   'beginning-of-buffer)  ; scroll top
(global-set-key [s-down] 'end-of-buffer)        ; scroll bottom

(global-set-key (kbd "s-{") 'previous-buffer)   ; buffer switching
(global-set-key (kbd "s-}") 'next-buffer)       ; buffer switching
(global-set-key (kbd "s-`") 'other-window)      ; window switching
(global-set-key [C-tab] 'other-window)          ; window switching

(global-set-key (kbd "s-+") 'text-scale-adjust) ; increase font size
(global-set-key (kbd "s-=") 'text-scale-adjust) ; increase font size
(global-set-key (kbd "s--") 'text-scale-adjust) ; decrease font size
(global-set-key (kbd "s-0") 'text-scale-adjust) ; reset font size

(global-set-key (kbd "C-x C-b") 'ibuffer)       ; use ibuffer instead of buffer list

(global-set-key (kbd "C-x C-h") 'bash-term)     ; open terminal buffer

(global-set-key (kbd "C-x g") 'magit-status)    ; magit status

(global-set-key (kbd "C-x c") 'execute-extended-command) ; M-x without meta
(global-set-key (kbd "C-x m") 'execute-extended-command) ; M-x without meta
