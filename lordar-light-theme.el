;;; lordar-light-theme.el --- Short Description -*- lexical-binding: t -*-

;; Copyright (C) 2024 Daniel Hubmann

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

(require 'lordar-theme)

;;;; Variables

;;;; Customization

;;;; Helpers

;;;###autoload
(defun lordar-light-theme-enable ()
  "Load and enable `lordar-light-theme'."
  (interactive)
  (lordar-theme--enable 'lordar-light))

;;;; Define Theme

(deftheme lordar-light "Lordar-light, minimalistic light theme")

;; Faded means the colors is faded but still has a contrast ratio of around 4.5.
;; Subtle means there is just a hint of the color left.
(let (
      ;; (background "#f6e5cc")
      (background "#f7e9d5")
      ;; (foreground "#000000")
      (foreground "#1b1b1b")
      (red "#a30030")
      (red-faded "#b53e48")
      (red-subtle "#efcfb9")            ; #e9b9a6
      (orange "#843a00")
      (orange-faded "#9a5625")
      (orange-subtle "#ebd0b4")         ; #e0bd9c
      (yellow "#634d00")
      (yellow-faded "#7c6527")
      (yellow-subtle "#e6d2b4")         ; #d5c19d
      (green "#005b4c")
      (green-faded "#3b7260")
      (green-subtle "#dcd5bd")          ; #c3c5ae
      (teal "#005290")
      (teal-faded "#48699b")
      (teal-subtle "#e0d4c6")           ; #c9c2b
      ;; (blue "#5139b4")
      (blue "#502ea1")
      ;; (blue "#27007d")
      ;; (blue "#1d0061")
      (blue-faded "#7555b9")
      (blue-subtle "#e6d0ca")           ; #d6bcc8
      (purple "#783289")
      (purple-faded "#8f5195")
      (purple-subtle "#e9d0c5")         ; #dbbcbe
      (pink "#872d67")
      (pink-faded "#9b4e78")
      (pink-subtle "#ead0c1")           ; #debbb5
      (grey "#505050")
      (grey-faded "#6a6764")
      (grey-subtle "#e3d4be"))          ; #cec2af

  (custom-theme-set-faces
   'lordar-light

;;;;; Base

   `(default ((t (:weight normal :foreground ,foreground :background ,background :family "SauceCodePro Nerd Font Mono"))))
   `(cursor ((t (:background ,blue-faded))))

;;;;; Custom

   `(lordar-theme-default ((t (:inherit default))))
   `(lordar-theme-bold ((t (:weight bold))))
   `(lordar-theme-strong ((t (:inherit lordar-theme-bold :foreground ,blue))))
   `(lordar-theme-faded ((t :foreground ,grey-faded)))
   `(lordar-theme-subtle ((t :foreground ,blue-subtle)))
   `(lordar-theme-keyword ((t :foreground ,blue)))
   `(lordar-theme-type ((t :foreground ,blue)))
   `(lordar-theme-verbatim ((t :foreground ,yellow)))
   `(lordar-theme-hightlight ((t :foreground ,blue)))

   `(lordar-theme-success ((t :foreground ,green)))
   `(lordar-theme-success-inversed ((t :foreground ,green-subtle :background ,green)))
   `(lordar-theme-warning ((t :foreground ,orange)))
   `(lordar-theme-warning-inversed ((t :foreground ,orange-subtle :background ,orange)))
   `(lordar-theme-error ((t :foreground ,green)))
   `(lordar-theme-error-inversed ((t :foreground ,red-subtle :background ,red)))

;;;;; Basis

   `(fixed-pitch ((t (:family "SauceCodePro Nerd Font Mono"))))
   `(variable-pitch ((t (:family "Noto Serif"))))
   ;; `(escape-glyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
   ;; `(homoglyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
   ;; `(minibuffer-prompt ((t (:foreground "#84ADFF"))))
   ;; `(highlight ((t (:inverse-video nil :background "#272829"))))
   ;; `(region ((t (:extend t :background "#332673"))))
   ;; `(shadow ((t (:foreground "#e1e2e5"))))
   ;; `(secondary-selection ((t (:extend t :background "#2b293b"))))
   ;; `(trailing-whitespace ((t (:underline (:color "#FE0400" :style wave :position nil) :background "#272829"))))
   ;; `(font-lock-bracket-face ((t (:inherit (font-lock-punctuation-face)))))
   `(font-lock-builtin-face ((t (:foreground ,blue))))
   `(font-lock-comment-face ((t (:foreground ,teal-subtle))))
   '(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face))))
   ;; `(font-lock-constant-face ((t (:foreground "#00D7C5"))))
   ;; `(font-lock-delimiter-face ((t (:inherit (font-lock-punctuation-face)))))
   ;; `(font-lock-doc-markup-face ((t (:inherit (font-lock-constant-face)))))
   ;; `(font-lock-escape-face ((t (:inherit (font-lock-regexp-grouping-backslash)))))
   ;; `(font-lock-function-call-face ((t (:inherit (font-lock-function-name-face)))))
   `(font-lock-function-name-face ((t (:foreground ,blue))))
   `(font-lock-keyword-face ((t (:foreground ,blue))))
   ;; `(font-lock-negation-char-face ((t (:foreground "#FE0400"))))
   ;; `(font-lock-number-face ((t nil)))
   ;; `(font-lock-misc-punctuation-face ((t (:inherit (font-lock-punctuation-face)))))
   ;; `(font-lock-operator-face ((t nil)))
   ;; `(font-lock-preprocessor-face ((t (:foreground "#FF85C2"))))
   ;; `(font-lock-property-name-face ((t (:inherit (font-lock-variable-name-face)))))
   ;; `(font-lock-property-use-face ((t (:inherit (font-lock-property-name-face)))))
   ;; `(font-lock-punctuation-face ((t nil)))
   ;; `(font-lock-regexp-grouping-backslash ((t (:foreground "#00D2F2"))))
   ;; `(font-lock-regexp-grouping-construct ((t (:foreground "#C877F0"))))
   `(font-lock-string-face ((t (:foreground ,teal))))
   `(font-lock-doc-face ((t (:inherit font-lock-string-face))))
   ;; `(font-lock-type-face ((t (:foreground "#FF8A9D"))))
   `(font-lock-variable-name-face ((t (:foreground ,purple))))
   ;; `(font-lock-variable-use-face ((t (:inherit (font-lock-variable-name-face)))))
   ;; `(font-lock-warning-face ((t (:foreground "#FF6D3C"))))
   ;; `(button ((t (:underline nil :foreground "#A9A4FF"))))
   ;; `(link ((t (:underline nil :foreground "#A9A4FF"))))
   ;; `(link-visited ((t (:underline nil :foreground "#918BFF"))))
   ;; `(fringe ((t (:foreground "#272829" :background "#090517"))))
   ;; `(header-line ((t (:foreground "#FF80E3" :background "#090517"))))
   ;; `(tooltip ((((class color)) (:inherit (variable-pitch) :foreground "black" :background "lightyellow")) (t (:inherit (variable-pitch)))))
   ;; `(mode-line ((t (:foreground "#7c78b9" :background "#1b1d4a"))))
   ;; `(mode-line-buffer-id ((t (:foreground "#00F1DD"))))
   ;; `(mode-line-emphasis ((t (:foreground "#FF80E3"))))
   ;; `(mode-line-highlight ((t (:foreground "#FF80E3"))))
   ;; `(mode-line-inactive ((t (:box nil :foreground "#979AA1" :background "#171718" :inherit (mode-line)))))
   ;; `(isearch ((t (:inverse-video t :foreground "#ffb54c" :background "#090517"))))
   ;; `(isearch-fail ((t (:foreground "#090517" :background "#FF6D3C"))))
   ;; `(lazy-highlight ((t (:inverse-video t :foreground "#A9A4FF" :background "#090517"))))
   ;; `(match ((t (:inverse-video t :foreground "#ffb54c" :background "#090517"))))
   ;; `(next-error ((t (:inherit (region)))))
   ;; `(query-replace ((t (:inherit (isearch)))))

   `(hl-line ((t (:background ,blue-subtle))))

   `(show-paren-match ((t (:foreground ,blue-subtle :background ,blue-faded :weight bold))))
   `(show-paren-mismatch ((t (:inherit lordar-theme-error-inversed))))

   ;;;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,grey-faded))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,grey-faded))))
   `(rainbow-delimiters-unmatched-face ((t (:weight bold :foreground ,red))))
   `(rainbow-delimiters-mismatched-face ((t (:weight bold :foreground ,red))))

   ;;;; highlight-parentheses
   `(highlight-parentheses-highlight ((t (:underline t :foreground ,red))))


   `(org-level-1 ((t (:foreground ,foreground :weight bold :height 1.08))))
   `(org-level-2 ((t (:foreground ,foreground :weight bold :height 1.04))))
   `(org-level-3 ((t (:foreground ,foreground :weight bold :height 1.00))))
   `(org-level-4 ((t (:foreground ,foreground :weight semi-bold))))
   `(org-level-5 ((t (:foreground ,foreground :weight semi-bold))))
   `(org-level-6 ((t (:foreground ,foreground :weight semi-bold))))
   `(org-level-7 ((t (:foreground ,foreground :weight semi-bold))))
   `(org-level-8 ((t (:foreground ,foreground :weight semi-bold))))
   )

;;;; Custom Variables

  (custom-theme-set-variables
   'lorisan
   ;;;; pos-tip
   ;; `(pos-tip-foreground-color ,grey-lighter)
   ;; `(pos-tip-background-color ,blue2-darkest)

   ;;;; hl-parens
   ;; `(highlight-parentheses-background-colors '(,grey-faded))
   ;; `(highlight-parentheses-colors '(,red))

   ;;;; evil-mode
   ;; `(evil-normal-state-cursor '(box ,wine-bright))
   ;; `(evil-motion-state-cursor '(box ,wine-bright))
   ;; `(evil-insert-state-cursor '(bar ,wine-bright))
   ;; `(evil-replace-state-cursor '(hbar ,wine-bright))
   ;; `(evil-operator-state-cursor '((hbar . ,(/ (window-pixel-height) (* (window-height) 2))) ,wine-bright))
   ;; `(evil-visual-state-cursor '(box ,turquoise-bright))
   ;; `(evil-emacs-state-cursor '(box ,mint-bright))
   )

  (setq
   highlight-parentheses-background-colors '(,green)
   highlight-parentheses-colors '(,red)
   )

  )

;;;; Provide Theme

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'lordar-light)

;;; lordar-light-theme.el ends here
