;;; ob-fish.el --- Org-babel functions for Fish Script  -*- lexical-binding: t; -*-

;; Copyright (C) 2021 takeokunn

;; Author: takeo obara
;; Maintainer: takeo obara
;; Created: 28 Aug 2021
;; Keywords: fish script languages, org, babel
;; Homepage: https://github.com/takeokunn/ob-fish/
;; Version: 0.0.1

;;; Code
(require 'org)
(require 'ob)

(defgroup ob-fish nil
  "org-mode blocks for fish script"
  :group 'org)

(defcustom org-babel-fish-command "fish"
  "The command to execute babel body code."
  :group 'ob-fish
  :type 'string)

(defcustom org-babel-fish-command-options nil
  "The fish command options to use when execute code."
  :group 'ob-fish
  :type 'string)

;;;###autoload
(defun org-babel-execute:fish (body _)
  "Org mode fish evaluate function"
  (let ((cmd (concat org-babel-fish-command " " org-babel-fish-command-options)))
    (org-babel-eval cmd body)))

;;;###autoload
(eval-after-load 'org
  '(add-to-list 'org-src-lang-modes '("fish" . fish)))

(provide 'ob-fish)
