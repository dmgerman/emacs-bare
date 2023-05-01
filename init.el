(add-to-list 'load-path "~/.emacs.d/modules/org-mode/lisp")
(require 'org)

(require 'org-tempo)  ;; accelerate inserting org-blocks
(require 'org-protocol)

(setq org-babel-C++-compiler "clang++")
(setq org-babel-python-command "python3")
(setq org-src-preserve-indentation t)

;do not ask to confirm
(setq org-confirm-babel-evaluate nil)

;do not try to indent
(setq org-adapt-indentation nil)

(setq org-return-follows-link t)

; redefine keys when  on heading * of header
(setq org-use-speed-commands t)

(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (R . t)
   (sql . t)
   (sqlite . t)
   (shell . t)
                                        ;      (sh . t)
   (dot . t)
   (python . t)
   (C . t)
;   (racket . t)
   (haskell . t)
   (latex . t)
   (scheme . t)
   (clojure . t)
   (org  . t)
                                        ;         (scala . t)
                                        ;      (fortran . t)
   (perl . t)
   (ruby . t)
;   (sml  . t)
   (calc  . t )
   (java  . t )
   (js  . t )
   (ditaa . t)
   (emacs-lisp . t)
   ))


(setq org-babel-C++-compiler "clang++")
(setq org-babel-python-command "python3")
(setq org-src-preserve-indentation t)

(add-hook 'org-mode-hook (lambda ()
                           (progn
                             (display-line-numbers-mode -1)
                             (linum-mode t)
                             (setq left-margin-width 4)
                             ;; this is needed to refresh the window
                             (set-window-buffer nil (current-buffer))
                             )))

(defun dmg-org-jump-to-heading-beginning ()
 "Jump to the beginning of the line of the closest Org heading."
 (interactive)
 (org-back-to-heading)
 (beginning-of-line))

(define-key org-mode-map (kbd "C-c C-8") 'dmg-org-jump-to-heading-beginning)
