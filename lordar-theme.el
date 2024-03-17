;;; lordar-theme.el --- Short Description -*- lexical-binding: t -*-

;; Copyright (C) 2023 Daniel Hubmann

;; Author: Daniel Hubmann
;; Maintainer: Daniel Hubmann
;; URL: https://github.com/hubisan/lordar-theme
;; Version: 0.1.0
;; Package-Requires: ((emacs "28.1"))
;; Keywords: faces

;; This file is not part of GNU Emacs

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; ...

;;; Code:

;;;; Requirements

;;;; Variables

;;;; Customization

(defgroup lordar-theme nil
  "Lordar theme customization."
  :group 'faces)

(defface lordar-theme-default nil
  "Default face to use."
  :group nil)

(defface lordar-theme-bold
  '((t (:bold t)))
  "Bold face."
  :group nil)

(defface lordar-theme-strong nil
  "Emphasize information of structural nature."
  :group nil)

(defface lordar-theme-faded nil
  "Faded face is for information that are less important."
  :group nil)

(defface lordar-theme-subtle nil
  "Subtle face is used to suggest a physical area on the screen."
  :group nil)

(defface lordar-theme-keyword nil
  "Default keyword face."
  :group nil)

(defface lordar-theme-type nil
  "Default type face."
  :group nil)

(defface lordar-theme-verbatim nil
  "Used for things like strings."
  :group nil)

(defface lordar-theme-highlight nil
  "Default highlight face."
  :group nil)

(defface lordar-theme-success nil
  "Used to show something is successfull."
  :group nil)

(defface lordar-theme-success-inversed nil
  "Used to show something is successfull, inversed."
  :group nil)

(defface lordar-theme-warning nil
  "Used for warnings."
  :group nil)

(defface lordar-theme-warning-inversed nil
  "Used for warnings, inversed."
  :group nil)

(defface lordar-theme-error nil
  "Used for errors."
  :group nil)

(defface lordar-theme-error-inversed nil
  "Used for errors, inversed."
  :group nil)

;;;; Helpers

(defun lordar-theme--enable (theme)
  "Load and enable THEME."
  ;; Disable all themes. Else faces might be overwritten.
  (dolist (enabled-theme custom-enabled-themes)
    (disable-theme enabled-theme))
  (load-theme theme t)
  (enable-theme theme))

(provide 'lordar-theme)

;;; lordar-theme.el ends here
