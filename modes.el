(provide 'modes)

;; cheat
(vendor 'cheat)

;; expand-region
(vendor 'expand-region)

;; gist
(vendor 'gist)

;; haml
(vendor 'haml-mode)

;; html
(add-hook 'html-mode-hook
          '(lambda()
             (setq tab-width 2)
             (mote-mode t)))
(add-to-list 'auto-mode-alist '("\\.mote$" . html-mode))

;; ido
(require 'ido)
(ido-mode t)                            ; enable ido mode
(setq ido-everywhere t)                 ; use ido everywhere
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

;; mote
(vendor 'mote-mode)

;; multiple-cursors
(vendor 'multiple-cursors)

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

;; Copied from https://coderwall.com/p/u-l0ra/ruby-code-folding-in-emacs
(add-hook 'ruby-mode-hook
  (lambda () (hs-minor-mode)))

(eval-after-load "hideshow"
  '(add-to-list 'hs-special-modes-alist
    `(ruby-mode
      ,(rx (or "def" "class" "module" "do" "{" "[")) ; Block start
      ,(rx (or "}" "]" "end"))                       ; Block end
      ,(rx (or "#" "=begin"))                        ; Comment start
      ruby-forward-sexp nil)))

;; sass
(vendor 'sass-mode)

;; scss
(vendor 'scss-mode)

;; shell
(custom-set-variables
 '(comint-prompt-read-only t))          ; make bash prompt read only

;; textmate
(vendor 'textmate)
(textmate-mode t)

;; uniquify
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward)

;; yaml
(vendor 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
