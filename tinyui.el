;;; tinyui.el --- Description -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2024 Teodor Heggelund
;;
;; Author: Teodor Heggelund <emacs@teod.eu>
;; Maintainer: Teodor Heggelund <emacs@teod.eu>
;; Created: August 14, 2024
;; Modified: August 14, 2024
;; Version: 0.0.1
;; Keywords: abbrev bib c calendar comm convenience data docs emulations extensions faces files frames games hardware help hypermedia i18n internal languages lisp local maint mail matching mouse multimedia news outlines processes terminals tex tools unix vc wp
;; Homepage: https://github.com/Teodor/scratch
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Description
;;
;;; Code:

(require 's) ; super nice string library by Magnar Sveen, strikingly similar to clojure.string.

;; completing read takes a prompt and a list of options.
(completing-read "What fruit do you want? >" '("apples" "oranges" "plums"))

(progn
  (completing-read "Pick an id! "
                   (s-lines (shell-command-to-string "./script.bb"))))

(defun tinyui-create-id ()
  (completing-read "Pick an id! "
                   (s-lines (s-trim (shell-command-to-string "./script.bb")))))

(defun tinyui-insert-id ()
  (interactive)
  (insert (tinyui-create-id)))

;; crimson-obnoxious-Falco
;; midnight-obnoxious-Teodor

(provide 'tinyui)
;;; tinyui.el ends here
