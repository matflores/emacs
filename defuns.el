(provide 'defuns)

;; close current buffer
(defun close-buffer ()
  (interactive)
  (kill-buffer (current-buffer)))

;; open bash terminal
(defun bash-term ()
  (interactive)
  (ansi-term "/bin/bash"))

;; resize windows
(defun resize-windows-horizontally-even ()
  "Resizes all the current windows to the most even possible size."
  (interactive)
  (save-excursion
    (let* ((qty (length (window-list)))
           (width (/ (frame-width) qty)))
      (dolist (window (window-list))
        (select-window window)
        (enlarge-window (- width (window-width)) 'horizontal)))))

;; load libraries from the vendor directory
(defun vendor (library)
  (let* ((file (symbol-name library))
         (normal (concat "~/.emacs.d/vendor/" file))
         (suffix (concat normal ".el")))
    (cond
     ((file-directory-p normal)
      (add-to-list 'load-path normal)
      (require library))
     ((file-directory-p suffix)
      (add-to-list 'load-path suffix)
      (require library))
     ((file-exists-p suffix)
      (require library)))))

;; eval preceding sexp and replace it with the result
;; credits: Magnar Sveen (https://github.com/magnars)
(defun eval-and-replace ()
  "Replace the preceding sexp with its value."
  (interactive)
  (backward-kill-sexp)
  (condition-case nil
      (prin1 (eval (read (current-kill 0)))
             (current-buffer))
    (error (message "Invalid expression")
           (insert (current-kill 0)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;; -*- Mode: Emacs-Lisp -*- ;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; find-library-file.el --- Functions and bindings to make library files
;;; more easy to examine and change.
;;; credits: Learning GNU Emacs (O'Reilly)

(defun find-library-file (library)
  "Takes a single argument LIBRARY, being a library file to search for.
Searches for LIBRARY directly (in case relative to current directory,
or absolute) and then searches directories in load-path in order.  It
will test LIBRARY with no added extension, then with .el, and finally
with .elc.  If a file is found in the search, it is visited.  If none
is found, an error is signaled.  Note that order of extension searching
is reversed from that of the load function."
  (interactive "sFind library file: ")
  (let ((path (cons "" load-path)) exact match elc test found)
    (while (and (not match) path)
      (setq test (concat (car path) "/" library)
            match (if (condition-case nil
                          (file-readable-p test)
                        (error nil))
                      test)
            path (cdr path)))
    (setq path (cons "" load-path))
    (or match
        (while (and (not elc) path)
          (setq test (concat (car path) "/" library ".elc")
                elc (if (condition-case nil
                            (file-readable-p test)
                          (error nil))
                        test)
                path (cdr path))))
    (setq path (cons "" load-path))
    (while (and (not match) path)
      (setq test (concat (car path) "/" library ".el")
            match (if (condition-case nil
                          (file-readable-p test)
                        (error nil))
                      test)
            path (cdr path)))
    (setq found (or match elc))
    (if found
        (progn
          (find-file found)
          (and match elc
               (message "(library file %s exists)" elc)
               (sit-for 1))
          (message "Found library file %s" found))
      (error "Library file \"%s\" not found." library))))
