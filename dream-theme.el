;; dream-theme -- dark, clean theme for emacs. inspired by the zenburn, sinburn
;; and similar themes

;; Copyright (C) 2013 Dirk-Jan C. Binnema

;; Author: Dirk-Jan C. Binnema <djcb@djcbsoftware.nl>
;; Created: 2013-01-27

;; This file is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;; <http://www.gnu.org/licenses/>.

;;; Code

(deftheme dream "The Dream Theme.")

;; my palette
(let ( (dt-fg		"#dcdccc")
       (dt-bg-1		"#2f2f2f")
       (dt-bg		"#151515")
       (dt-bg+1		"#202020")
       (dt-bg+2		"#303030")
       (dt-bg+3		"#101010")
       (dt-red+1	"#dca3a3")
       (dt-red		"#cc9393")
       (dt-red-1	"#bc8383")
       (dt-red-2	"#ac7373")
       (dt-red-3	"#9c6363")
       (dt-red-4	"#8c5353")
       (dt-orange	"#dfaf8f")
       (dt-yellow	"#f0dfaf")
       (dt-yellow-1	"#e0cf9f")
       (dt-yellow-2	"#d0bf8f")
       (dt-yellow-3     "#72715e")
       (dt-green-4      "#2e3330")
       (dt-green-1	"#5f7f5f")
       (dt-green	"#7f9f7f")
       (dt-green+1	"#8fb28f")
       (dt-green+2	"#9fc59f")
       (dt-green+3	"#afd8af")
       (dt-green+4	"#bfebbf")
       (dt-cyan		"#93e0e3")
       (dt-blue+1	"#94bff3")
       (dt-blue		"#8cd0d3")
       (dt-blue-1	"#7cb8bb")
       (dt-blue-2	"#6ca0a3")
       (dt-blue-3	"#5c888b")
       (dt-blue-4	"#4c7073")
       (dt-blue-5	"#366060")
       (dt-magenta	"#dc8cc3"))

  (custom-theme-set-faces
    'dream
    ;; basics

    `(default ((t (:background ,dt-bg :foreground ,dt-fg))))
    '(fixed-pitch ((t (:weight bold))))
    '(italic ((t (:slant italic))))
    '(underline ((t (:underline t))))
    '(fringe ((t (:inherit 'default))))
    `(header-line ((t (:box (:color "#2e3330" :line-width 2)
			:weight bold :foreground ,dt-blue-1))))
    '(highlight ((t (:weight bold :underline t ))))
    '(hover-highlight ((t (:underline t :foreground "#f8f893"))))
    '(match ((t (:weight bold))))
    `(menu ((t (:background "#1e2320"))))
    `(mode-line-inactive ((t (:background ,dt-green-4 :box (:line-width 2)))))
    '(mouse ((t (:inherit dt-foreground))))
    '(paren ((t (:inherit dt-lowlight-1))))
    '(trailing-whitespace ((t (:inherit font-lock-warning))))
    `(link ((t (:foreground ,dt-blue-3 :underline t))))
    `(border ((t (:background ,dt-bg))))
    `(button ((t (:foreground ,dt-yellow :background "#506070"
		   :weight bold :underline t))))
    `(cursor ((t (:background ,dt-yellow :foreground ,dt-yellow))))
    `(minibuffer-prompt ((t (:foreground ,dt-blue))))
    `(mode-line ((t (:foreground ,dt-yellow :background "#1e2320"
		      :box (:color "#1e2320" :line-width 2)))))
    `(region ((t (:foreground nil :background ,dt-bg+2))))
    `(scroll-bar ((t (:background ,dt-bg+2))))
    `(secondary-selection ((t (:foreground nil :background ,dt-bg+2))))
    `(tool-bar ((t (:background ,dt-bg+2))))

    ;; erc
    '(erc-action-face ((t (:inherit erc-default))))
    '(erc-bold-face ((t (:weight bold))))
    `(erc-current-nick-face ((t (:foreground ,dt-yellow))))
    '(erc-dangerous-host-face ((t (:inherit font-lock-warning))))
    '(erc-direct-msg-face ((t (:inherit erc-default))))
    '(erc-error-face ((t (:inherit font-lock-warning))))
    `(erc-fool-face ((t (:foreground ,dt-red))))
    '(erc-highlight-face ((t (:inherit highlight))))
    `(erc-keyword-face ((t (:foreground ,dt-red :weight bold))))
    `(erc-my-nick-face ((t (:foreground ,dt-red :weight bold))))
    `(erc-nick-default-face ((t (:foreground ,dt-blue))))
    '(erc-nick-msg-face ((t (:inherit erc-default))))
    `(erc-notice-face ((t (:foreground ,dt-green))))
    `(erc-pal-face ((t (:foreground ,dt-blue))))
    `(erc-prompt-face ((t (:weight bold :foreground ,dt-yellow))))
    `(erc-timestamp-face ((t (:foreground ,dt-green+1))))
    `(erc-input-face ((t (:foreground ,dt-yellow))))

    ;; font-locking (ie., syntax highlighting)
    `(font-lock-builtin-face ((t (:foreground ,dt-blue))))
    `(font-lock-comment-face ((t (:foreground ,dt-green :slant italic))))
    `(font-lock-comment-delimiter-face ((t (:foreground ,dt-green+2))))
    `(font-lock-constant-face ((t (:foreground ,dt-green+1))))
    `(font-lock-doc-face ((t (:foreground ,dt-green+1 :slant italic))))
    `(font-lock-doc-string-face ((t (:foreground ,dt-green+1 :slant italic))))
    `(font-lock-function-name-face ((t (:foreground ,dt-green+1 :weight bold))))
    `(font-lock-keyword-face ((t (:foreground ,dt-red-1 :weight bold))))
    `(font-lock-negation-char-face ((t (:foreground ,dt-green-1))))
    `(font-lock-preprocessor-face ((t (:foreground ,dt-red+1))))
    `(font-lock-string-face ((t (:foreground ,dt-blue-2))))
    `(font-lock-type-face ((t (:foreground ,dt-blue+1))))
    `(font-lock-variable-name-face ((t (:foreground ,dt-yellow))))
    `(font-lock-warning-face ((t (:foreground ,dt-yellow))))
    `(font-lock-pseudo-keyword-face ((t (:foreground ,dt-red-2 :weight bold))))
    `(font-lock-operator-face ((t (:foreground ,dt-blue-1))))

    ;; hlline
    `(hl-line ((t (:foreground nil :background ,dt-bg+1))))

    ;; message-mode
    `(message-cited-text-face ((t (:inherit font-lock-comment))))
    `(message-header-name-face ((t (:foregrond ,dt-green+1 :weight bold))))
    `(message-header-other-face ((t (:foreground ,dt-green))))
    `(message-header-to-face ((t (:foreground ,dt-green+1))))
    `(message-header-from-face ((t (:foreground ,dt-green+2))))
    `(message-header-cc-face ((t (:foreground ,dt-green+3))))
    `(message-header-newsgroups-face ((t (:foreground ,dt-blue))))
    `(message-header-subject-face ((t (:foreground ,dt-red))))
    `(message-header-xheader-face ((t (:foreground ,dt-green))))
    `(message-mml-face ((t (:foreground ,dt-blue-1))))
    `(message-separator-face ((t (:foreground ,dt-green :background ,dt-bg+3))))

    ;; linum
    `(linum ((t (:foreground ,dt-yellow-3 :height .8))))

    ))

(provide-theme 'dream)
