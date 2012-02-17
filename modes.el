(provide 'modes)

;; gist
(vendor 'gist)

;; haml
(vendor 'haml-mode)

;; html
(add-hook 'html-mode-hook
          '(lambda()
             (setq tab-width 2)))

;; ido
(require 'ido)
(ido-mode t)                            ; enable ido mode
(setq ido-use-filename-at-point nil)    ; look for filename at point
(setq ido-enable-flex-matching t)       ; case insensitive matching
(setq ido-create-new-buffer 'always)    ; always create a new buffer
(add-to-list 'ido-ignore-files          ; ignore these files
             "\\.DS_Store")

;; js
(add-hook 'js-mode-hook
          '(lambda ()
             (setq js-indent-level 2)))

;; magit
(vendor 'magit)

;; markdown
(vendor 'markdown-mode)
(add-to-list 'auto-mode-alist '("\\.md$"       . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown$" . markdown-mode))

;; ruby
(vendor 'ruby-electric)
(add-to-list 'auto-mode-alist '("\\.rake$"    . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$"      . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile"     . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile"    . ruby-mode))
(add-to-list 'auto-mode-alist '("Thorfile"    . ruby-mode))
(add-hook 'ruby-mode-hook
          (lambda () (ruby-electric-mode t)))

;; rvm
(vendor 'rvm)

;; sass
(vendor 'sass-mode)

;; scss
(vendor 'scss-mode)

;; textmate
(vendor 'textmate)
(textmate-mode t)

;; yaml
(vendor 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
