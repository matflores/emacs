;; My emacs configuration to use it as my Git editor
;;
;; I'm using this configuration in my ~/.gitconfig
;;
;; git config --global core.editor "/usr/local/bin/emacs -q -l ~/.emacs.d/giteditor.el -nw"
;;
;; See https://github.com/lunaryorn/git-modes
;;
;; Shamelessly copied from https://github.com/inkel/emacs-d
;;
(add-to-list 'load-path "~/.emacs.d")   ; configure load path
(require 'defuns)                       ; functions
(vendor 'git-commit-mode)
