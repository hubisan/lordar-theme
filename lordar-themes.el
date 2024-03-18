;;; lordar-themes.el --- Short Description -*- lexical-binding: t -*-

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


;;;; Helpers

(defun lordar-theme--enable (theme)
  "Load and enable THEME."
  ;; Disable all themes. Else faces might be overwritten.
  (dolist (enabled-theme custom-enabled-themes)
    (disable-theme enabled-theme))
  (load-theme theme t)
  (enable-theme theme))

(provide 'lordar-themes)

;;; lordar-themes.el ends here
