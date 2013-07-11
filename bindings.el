(provide 'bindings)

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

(global-set-key (kbd "C-s-<left>")  'shrink-window-horizontally)
(global-set-key (kbd "C-s-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "C-s-<up>")    'shrink-window)
(global-set-key (kbd "C-s-<down>")  'enlarge-window)

(global-set-key (kbd "C-x C-b") 'ibuffer)       ; use ibuffer instead of buffer list

(global-set-key (kbd "C-x g")   'magit-status)  ; magit status
(global-set-key (kbd "C-x C-g") 'magit-status)  ; magit status

(global-set-key (kbd "C-x m") 'execute-extended-command) ; M-x without meta

(global-set-key (kbd "C-c C-*") 'mc/edit-lines)          ; add multiple cursors to active region
(global-set-key (kbd "C-*") 'mc/mark-all-like-this)      ; add multiple cursors using selected keyword
(global-set-key (kbd "C->") 'mc/mark-next-like-this)     ; add multiple cursors using selected keyword
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this) ; add multiple cursors using selected keyword

(global-set-key (kbd "s-2") 'er/expand-region)   ; expand region
(global-set-key (kbd "s-@") 'er/contract-region) ; contract region
