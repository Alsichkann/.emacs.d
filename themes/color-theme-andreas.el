(eval-when-compile    (require 'color-theme))
(defun color-theme-andreas ()
  "Color theme by Boris, created 2012-09-29."
  (interactive)
  (color-theme-install
   '(color-theme-andreas
     ((background-color . "white")
      (background-mode . light)
      (background-toolbar-color . "#cccccccccccc")
      (border-color . "#000000000000")
      (bottom-toolbar-shadow-color . "#7a7a7a7a7a7a")
      (cursor-color . "yellow")
      (foreground-color . "black")
      (mouse-color . "sienna1")
      (senator-eldoc-use-color . t)
      (top-toolbar-shadow-color . "#f5f5f5f5f5f5")
      (vc-annotate-very-old-color . "#0046FF")
      (viper-saved-cursor-color-in-replace-mode . "Red3"))
     ((ac-fuzzy-cursor-color . "red")
      (browse-kill-ring-separator-face . bold)
      (goto-address-mail-face . italic)
      (goto-address-mail-mouse-face . secondary-selection)
      (goto-address-url-face . link)
      (goto-address-url-mouse-face . highlight)
      (list-matching-lines-buffer-name-face . underline)
      (list-matching-lines-face . bold)
      (moccur-maximum-displayed-with-color . 500)
      (multi-shell-use-ansi-color . t)
      (tags-tag-face . default)
      (widget-mouse-face . highlight))
     (default ((t (:stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "bitstream" :family "Courier 10 Pitch"))))
     (OrangeRed ((t (nil))))
     (ac-candidate-face ((t (:background "lightgray" :foreground "black"))))
     (ac-completion-face ((t (:foreground "darkgray" :underline t))))
     (ac-gtags-candidate-face ((t (:background "lightgray" :foreground "navy"))))
     (ac-gtags-selection-face ((t (:background "navy" :foreground "white"))))
     (ac-selection-face ((t (:background "steelblue" :foreground "white"))))
     (ac-slime-menu-face ((t (:foreground "black" :background "lightgray"))))
     (ac-slime-selection-face ((t (:foreground "white" :background "steelblue"))))
     (ac-yasnippet-candidate-face ((t (:background "sandybrown" :foreground "black"))))
     (ac-yasnippet-selection-face ((t (:background "coral3" :foreground "white"))))
     (ace-jump-face-background ((t (:foreground "gray70"))))
     (ace-jump-face-foreground ((t (:foreground "red"))))
     (ahs-definition-face ((t (:background "CadetBlue" :foreground "moccasin" :underline t))))
     (ahs-edit-mode-face ((t (:background "Coral3" :foreground "White"))))
     (ahs-face ((t (:background "LightYellow4" :foreground "GhostWhite"))))
     (ahs-plugin-bod-face ((t (:background "DodgerBlue" :foreground "Black"))))
     (ahs-plugin-defalt-face ((t (:background "Orange1" :foreground "Black"))))
     (ahs-plugin-whole-buffer-face ((t (:background "GreenYellow" :foreground "Black"))))
     (ahs-warning-face ((t (:bold t :foreground "Red" :weight bold))))
     (blue ((t (:foreground "blue"))))
     (bold ((t (:bold t :weight bold))))
     (bold-italic ((t (:italic t :bold t :slant italic :weight bold))))
     (border ((t (:background "#000000000000"))))
     (border-glyph ((t (nil))))
     (buffer-menu-buffer ((t (:bold t :weight bold))))
     (buffers-tab ((t (:background "black" :foreground "white"))))
     (button ((t (:underline t :foreground "RoyalBlue3"))))
     (c-annotation-face ((t (:foreground "Aquamarine"))))
     (calendar-today-face ((t (:underline t))))
     (change-log-file-face ((t (:foreground "Blue"))))
     (change-log-name-face ((t (:foreground "Maroon"))))
     (color-mode-face-@ ((t (:foreground "orange"))))
     (color-mode-face-a ((t (:foreground "blue"))))
     (color-mode-face-b ((t (:foreground "red"))))
     (color-mode-face-c ((t (:foreground "green3"))))
     (color-mode-face-d ((t (:background "red" :foreground "white"))))
     (color-mode-face-e ((t (:background "orange" :foreground "blue"))))
     (color-mode-face-f ((t (:background "blue" :foreground "yellow"))))
     (color-mode-face-g ((t (:background "lightblue" :foreground "brown"))))
     (color-mode-face-h ((t (:background "brown" :foreground "white"))))
     (comint-highlight-input ((t (:bold t :weight bold))))
     (comint-highlight-prompt ((t (:foreground "dark blue"))))
     (completions-annotations ((t (:italic t :slant italic))))
     (completions-common-part ((t (:family "Courier 10 Pitch" :foundry "bitstream" :width normal :weight normal :slant normal :underline nil :overline nil :strike-through nil :box nil :inverse-video nil :foreground "black" :background "white" :stipple nil :height 113))))
     (completions-first-difference ((t (:bold t :weight bold))))
     (cperl-array-face ((t (:foreground "darkseagreen"))))
     (cperl-hash-face ((t (:foreground "darkseagreen"))))
     (cperl-nonoverridable-face ((t (:foreground "SkyBlue"))))
     (cursor ((t (:background "yellow"))))
     (custom-button-face ((t (:bold t :weight bold))))
     (custom-changed-face ((t (:background "blue" :foreground "white"))))
     (custom-documentation-face ((t (nil))))
     (custom-face-tag-face ((t (:underline t))))
     (custom-group-tag-face ((t (:foreground "blue" :underline t))))
     (custom-group-tag-face-1 ((t (:foreground "red" :underline t))))
     (custom-invalid-face ((t (:background "red" :foreground "yellow"))))
     (custom-modified-face ((t (:background "blue" :foreground "white"))))
     (custom-rogue-face ((t (:background "black" :foreground "pink"))))
     (custom-saved-face ((t (:underline t))))
     (custom-set-face ((t (:background "white" :foreground "blue"))))
     (custom-state-face ((t (:foreground "dark green"))))
     (custom-variable-button-face ((t (:bold t :background "gray90" :underline t :weight bold))))
     (custom-variable-tag-face ((t (:background "gray95" :foreground "blue" :underline t))))
     (cvs-filename-face ((t (:foreground "blue4"))))
     (cvs-handled-face ((t (:foreground "pink"))))
     (cvs-header-face ((t (:bold t :foreground "blue4" :weight bold))))
     (cvs-marked-face ((t (:bold t :foreground "green3" :weight bold))))
     (cvs-msg-face ((t (:italic t :slant italic))))
     (cvs-need-action-face ((t (:foreground "orange"))))
     (cvs-unknown-face ((t (:foreground "red"))))
     (diary-face ((t (:foreground "red"))))
     (dired-directory ((t (:foreground "blue3"))))
     (dired-flagged ((t (:bold t :weight bold :foreground "Red1"))))
     (dired-header ((t (:foreground "#6920ac"))))
     (dired-ignored ((t (:foreground "grey50"))))
     (dired-mark ((t (:foreground "Aquamarine"))))
     (dired-marked ((t (:bold t :weight bold :foreground "DarkOrange"))))
     (dired-perm-write ((t (:foreground "orange1"))))
     (dired-symlink ((t (:foreground "red1"))))
     (dired-warning ((t (:bold t :weight bold :foreground "Red"))))
     (display-time-mail-balloon-enhance-face ((t (:background "orange"))))
     (display-time-mail-balloon-gnus-group-face ((t (:foreground "blue"))))
     (display-time-time-balloon-face ((t (:foreground "red"))))
     (emacs-wiki-bad-link-face ((t (:bold t :foreground "red" :weight bold))))
     (emacs-wiki-link-face ((t (:bold t :foreground "green" :weight bold))))
     (erc-action-face ((t (:bold t :weight bold))))
     (erc-bold-face ((t (:bold t :weight bold))))
     (erc-default-face ((t (nil))))
     (erc-direct-msg-face ((t (:foreground "sandybrown"))))
     (erc-error-face ((t (:bold t :foreground "IndianRed" :weight bold))))
     (erc-input-face ((t (:foreground "Beige"))))
     (erc-inverse-face ((t (:background "wheat" :foreground "darkslategrey"))))
     (erc-notice-face ((t (:foreground "MediumAquamarine"))))
     (erc-pal-face ((t (:foreground "pale green"))))
     (erc-prompt-face ((t (:foreground "MediumAquamarine"))))
     (erc-underline-face ((t (:underline t))))
     (error ((t (:bold t :foreground "Red1" :weight bold))))
     (escape-glyph ((t (:foreground "brown"))))
     (eshell-ls-archive-face ((t (:bold t :foreground "IndianRed" :weight bold))))
     (eshell-ls-backup-face ((t (:foreground "Grey"))))
     (eshell-ls-clutter-face ((t (:foreground "DimGray"))))
     (eshell-ls-directory-face ((t (:bold t :foreground "MediumSlateBlue" :weight bold))))
     (eshell-ls-executable-face ((t (:foreground "Coral"))))
     (eshell-ls-missing-face ((t (:foreground "black"))))
     (eshell-ls-picture-face ((t (:foreground "Violet"))))
     (eshell-ls-product-face ((t (:foreground "sandybrown"))))
     (eshell-ls-readonly-face ((t (:foreground "Aquamarine"))))
     (eshell-ls-special-face ((t (:foreground "Gold"))))
     (eshell-ls-symlink-face ((t (:foreground "White"))))
     (eshell-ls-unreadable-face ((t (:foreground "DimGray"))))
     (eshell-prompt-face ((t (:foreground "MediumAquamarine"))))
     (eshell-test-failed-face ((t (:bold t :foreground "OrangeRed" :weight bold))))
     (eshell-test-ok-face ((t (:bold t :foreground "Green" :weight bold))))
     (etags-select-highlight-tag-face ((t (:bold t :background "cadetblue4" :foreground "white" :weight bold))))
     (excerpt ((t (:italic t :slant italic))))
     (ff-paths-non-existant-file-face ((t (:bold t :foreground "NavyBlue" :weight bold))))
     (fg:black ((t (:foreground "black"))))
     (file-name-shadow ((t (:foreground "grey50"))))
     (fixed ((t (:bold t :weight bold))))
     (fixed-pitch ((t (:family "Monospace"))))
     (fl-comment-face ((t (:foreground "pink"))))
     (fl-doc-string-face ((t (:foreground "purple"))))
     (fl-function-name-face ((t (:foreground "red"))))
     (fl-keyword-face ((t (:foreground "cadetblue"))))
     (fl-string-face ((t (:foreground "green"))))
     (fl-type-face ((t (:foreground "yellow"))))
     (font-lock-builtin-face ((t (:foreground "LightSteelBlue"))))
     (font-lock-comment-delimiter-face ((t (:foreground "orange1"))))
     (font-lock-comment-face ((t (:foreground "orange1"))))
     (font-lock-constant-face ((t (:foreground "Aquamarine"))))
     (font-lock-doc-face ((t (:foreground "green4"))))
     (font-lock-doc-string-face ((t (:foreground "green4"))))
     (font-lock-exit-face ((t (:foreground "green"))))
     (font-lock-function-name-face ((t (:foreground "blue3"))))
     (font-lock-keyword-face ((t (:foreground "red1"))))
     (font-lock-negation-char-face ((t (nil))))
     (font-lock-preprocessor-face ((t (:foreground "blue3"))))
     (font-lock-reference-face ((t (:foreground "red3"))))
     (font-lock-regexp-grouping-backslash ((t (:bold t :weight bold))))
     (font-lock-regexp-grouping-construct ((t (:bold t :weight bold))))
     (font-lock-string-face ((t (:foreground "green4"))))
     (font-lock-type-face ((t (:foreground "#6920ac"))))
     (font-lock-variable-name-face ((t (:foreground "blue3"))))
     (font-lock-warning-face ((t (:bold t :foreground "Red" :weight bold))))
     (fringe ((t (:background "grey88"))))
     (glyphless-char ((t (:height 0.6))))
     (gnu-cite-face-3 ((t (nil))))
     (gnu-cite-face-4 ((t (nil))))
     (gnus-cite-attribution-face ((t (:underline t))))
     (gnus-cite-face-1 ((t (:foreground "MidnightBlue"))))
     (gnus-cite-face-10 ((t (:foreground "medium purple"))))
     (gnus-cite-face-11 ((t (:foreground "turquoise"))))
     (gnus-cite-face-2 ((t (:foreground "firebrick"))))
     (gnus-cite-face-3 ((t (:foreground "dark green"))))
     (gnus-cite-face-4 ((t (:foreground "OrangeRed"))))
     (gnus-cite-face-5 ((t (:foreground "dark khaki"))))
     (gnus-cite-face-6 ((t (:foreground "dark violet"))))
     (gnus-cite-face-7 ((t (:foreground "SteelBlue4"))))
     (gnus-cite-face-8 ((t (:foreground "magenta"))))
     (gnus-cite-face-9 ((t (:foreground "violet"))))
     (gnus-emphasis-bold ((t (:bold t :weight bold))))
     (gnus-emphasis-bold-italic ((t (:italic t :bold t :slant italic :weight bold))))
     (gnus-emphasis-highlight-words ((t (:background "black" :foreground "yellow"))))
     (gnus-emphasis-italic ((t (:italic t :slant italic))))
     (gnus-emphasis-underline ((t (:underline t))))
     (gnus-emphasis-underline-bold ((t (:bold t :underline t :weight bold))))
     (gnus-emphasis-underline-bold-italic ((t (:italic t :bold t :underline t :slant italic :weight bold))))
     (gnus-emphasis-underline-italic ((t (:italic t :underline t :slant italic))))
     (gnus-group-mail-1-empty-face ((t (:foreground "DeepPink3"))))
     (gnus-group-mail-1-face ((t (:bold t :foreground "DeepPink3" :weight bold))))
     (gnus-group-mail-2-empty-face ((t (:foreground "HotPink3"))))
     (gnus-group-mail-2-face ((t (:bold t :foreground "HotPink3" :weight bold))))
     (gnus-group-mail-3-empty-face ((t (:foreground "magenta4"))))
     (gnus-group-mail-3-face ((t (:bold t :foreground "magenta4" :weight bold))))
     (gnus-group-mail-low-empty-face ((t (:foreground "DeepPink4"))))
     (gnus-group-mail-low-face ((t (:bold t :foreground "DeepPink4" :weight bold))))
     (gnus-group-news-1-empty-face ((t (:foreground "ForestGreen"))))
     (gnus-group-news-1-face ((t (:bold t :foreground "ForestGreen" :weight bold))))
     (gnus-group-news-2-empty-face ((t (:foreground "CadetBlue4"))))
     (gnus-group-news-2-face ((t (:bold t :foreground "CadetBlue4" :weight bold))))
     (gnus-group-news-3-empty-face ((t (nil))))
     (gnus-group-news-3-face ((t (:bold t :weight bold))))
     (gnus-group-news-4-empty-face ((t (nil))))
     (gnus-group-news-4-face ((t (:bold t :weight bold))))
     (gnus-group-news-5-empty-face ((t (nil))))
     (gnus-group-news-5-face ((t (:bold t :weight bold))))
     (gnus-group-news-6-empty-face ((t (nil))))
     (gnus-group-news-6-face ((t (:bold t :weight bold))))
     (gnus-group-news-low-empty-face ((t (:foreground "DarkGreen"))))
     (gnus-group-news-low-face ((t (:bold t :foreground "DarkGreen" :weight bold))))
     (gnus-header-content-face ((t (:italic t :foreground "indianred4" :slant italic))))
     (gnus-header-from-face ((t (:bold t :foreground "red3" :weight bold))))
     (gnus-header-name-face ((t (:foreground "maroon"))))
     (gnus-header-newsgroups-face ((t (:italic t :bold t :foreground "MidnightBlue" :slant italic :weight bold))))
     (gnus-header-subject-face ((t (:bold t :foreground "red4" :weight bold))))
     (gnus-signature-face ((t (:bold t :foreground "khaki" :weight bold))))
     (gnus-splash-face ((t (:foreground "red"))))
     (gnus-summary-cancelled-face ((t (:background "black" :foreground "yellow"))))
     (gnus-summary-high-ancient-face ((t (:bold t :foreground "RoyalBlue" :weight bold))))
     (gnus-summary-high-read-face ((t (:bold t :foreground "DarkGreen" :weight bold))))
     (gnus-summary-high-ticked-face ((t (:bold t :foreground "DarkRed" :weight bold))))
     (gnus-summary-high-unread-face ((t (:bold t :weight bold))))
     (gnus-summary-low-ancient-face ((t (:italic t :foreground "RoyalBlue" :slant italic))))
     (gnus-summary-low-read-face ((t (:italic t :foreground "DarkGreen" :slant italic))))
     (gnus-summary-low-ticked-face ((t (:italic t :foreground "firebrick" :slant italic))))
     (gnus-summary-low-unread-face ((t (:italic t :slant italic))))
     (gnus-summary-normal-ancient-face ((t (:foreground "RoyalBlue"))))
     (gnus-summary-normal-read-face ((t (:foreground "DarkGreen"))))
     (gnus-summary-normal-ticked-face ((t (:foreground "Red"))))
     (gnus-summary-normal-unread-face ((t (:bold t :foreground "DarkGreen" :weight bold))))
     (gnus-summary-selected-face ((t (:underline t))))
     (gnus-x-face ((t (nil))))
     (green ((t (:foreground "green"))))
     (gui-button-face ((t (:background "grey75"))))
     (gui-element ((t (:background "Gray80"))))
     (header-line ((t (:background "grey90" :foreground "grey20" :box nil))))
     (help-argument-name ((t (:italic t :slant italic))))
     (highlight ((t (:background "darkolivegreen"))))
     (highline-face ((t (:background "SeaGreen"))))
     (holiday-face ((t (:background "pink"))))
     (hyper-apropos-documentation ((t (:foreground "darkred"))))
     (hyper-apropos-heading ((t (:bold t :weight bold))))
     (hyper-apropos-hyperlink ((t (:foreground "blue4"))))
     (hyper-apropos-major-heading ((t (:bold t :weight bold))))
     (hyper-apropos-section-heading ((t (:italic t :bold t :slant italic :weight bold))))
     (hyper-apropos-warning ((t (:bold t :foreground "red" :weight bold))))
     (ido-first-match ((t (:bold t :weight bold))))
     (ido-incomplete-regexp ((t (:bold t :weight bold :foreground "Red"))))
     (ido-indicator ((t (:background "red1" :foreground "yellow1" :width condensed))))
     (ido-only-match ((t (:foreground "ForestGreen"))))
     (ido-subdir ((t (:foreground "red1"))))
     (ido-subdir-face ((t (:foreground "red"))))
     (ido-virtual ((t (:foreground "LightSteelBlue"))))
     (info-menu-5 ((t (:underline t))))
     (info-node ((t (:italic t :bold t :slant italic :weight bold))))
     (info-xref ((t (:bold t :weight bold))))
     (isearch ((t (:background "yellow" :foreground "red"))))
     (isearch-fail ((t (:background "RosyBrown1"))))
     (isearch-secondary ((t (:foreground "red3"))))
     (italic ((t (:italic t :slant italic))))
     (js2-error-face ((t (:foreground "red"))))
     (js2-external-variable-face ((t (:foreground "orange"))))
     (js2-function-param-face ((t (:foreground "SeaGreen"))))
     (js2-instance-member-face ((t (:foreground "DarkOrchid"))))
     (js2-jsdoc-html-tag-delimiter-face ((t (:foreground "dark khaki"))))
     (js2-jsdoc-html-tag-name-face ((t (:foreground "rosybrown"))))
     (js2-jsdoc-tag-face ((t (:foreground "SlateGray"))))
     (js2-jsdoc-type-face ((t (:foreground "SteelBlue"))))
     (js2-jsdoc-value-face ((t (:foreground "PeachPuff3"))))
     (js2-magic-paren-face ((t (:underline t))))
     (js2-private-function-call-face ((t (:foreground "goldenrod"))))
     (js2-private-member-face ((t (:foreground "PeachPuff3"))))
     (js2-warning-face ((t (:underline "orange"))))
     (kai-gnus-cite-face-1 ((t (:foreground "LightCyan4"))))
     (kai-gnus-cite-face-2 ((t (:foreground "LightSkyBlue2"))))
     (kai-gnus-cite-face-3 ((t (:foreground "DodgerBlue3"))))
     (kai-gnus-group-mail-face ((t (:foreground "darkslategrey"))))
     (kai-gnus-group-nonempty-mail-face ((t (:foreground "DarkRed"))))
     (kai-gnus-group-starred-face ((t (:foreground "grey50"))))
     (lazy-highlight ((t (:background "paleturquoise"))))
     (left-margin ((t (nil))))
     (link ((t (:foreground "RoyalBlue3" :underline t))))
     (link-visited ((t (:underline t :foreground "magenta4"))))
     (list-mode-item-selected ((t (:background "gray68"))))
     (makefile-space-face ((t (:background "hotpink"))))
     (match ((t (:background "yellow1"))))
     (menu ((t (nil))))
     (message-cited-text ((t (:italic t :slant italic))))
     (message-cited-text-face ((t (:foreground "red"))))
     (message-header-cc-face ((t (:foreground "MidnightBlue"))))
     (message-header-contents ((t (:italic t :slant italic))))
     (message-header-name-face ((t (:foreground "cornflower blue"))))
     (message-header-newsgroups-face ((t (:italic t :bold t :foreground "blue4" :slant italic :weight bold))))
     (message-header-other-face ((t (:foreground "steel blue"))))
     (message-header-subject-face ((t (:bold t :foreground "navy blue" :weight bold))))
     (message-header-to-face ((t (:bold t :foreground "MidnightBlue" :weight bold))))
     (message-header-xheader-face ((t (:foreground "blue"))))
     (message-headers ((t (:bold t :weight bold))))
     (message-highlighted-header-contents ((t (:italic t :bold t :slant italic :weight bold))))
     (message-mml-face ((t (:foreground "ForestGreen"))))
     (message-separator-face ((t (:foreground "brown"))))
     (minibuffer-prompt ((t (:foreground "medium blue"))))
     (mm/master-face ((t (:background "DarkSeaGreen1"))))
     (mm/mirror-face ((t (:background "DarkSeaGreen1"))))
     (moccur-current-line-face ((t (:underline t))))
     (moccur-edit-done-face ((t (:bold t :foreground "ForestGreen" :weight bold))))
     (moccur-edit-face ((t (:bold t :background "slate blue" :foreground "white" :weight bold))))
     (moccur-edit-file-face ((t (:bold t :background "ForestGreen" :weight bold))))
     (moccur-edit-reject-face ((t (:bold t :foreground "red" :weight bold))))
     (moccur-face ((t (:bold t :background "royal blue" :foreground "white" :weight bold))))
     (mode-line ((t (:background "Gray75" :foreground "Black" :box (:line-width -1 :style released-button)))))
     (mode-line-buffer-id ((t (:bold t :background "Gray75" :foreground "blue4" :weight bold))))
     (mode-line-emphasis ((t (:bold t :weight bold))))
     (mode-line-highlight ((t (:box (:line-width 2 :color "grey40" :style released-button)))))
     (mode-line-inactive ((t (:background "grey90" :foreground "grey20" :box (:line-width -1 :color "grey75" :style nil) :weight light))))
     (modeline-mousable ((t (:background "Gray75" :foreground "firebrick"))))
     (modeline-mousable-minor-mode ((t (:background "Gray75" :foreground "green4"))))
     (mouse ((t (:background "sienna1"))))
     (next-error ((t (:background "gray75"))))
     (nobreak-space ((t (:foreground "brown" :underline t))))
     (p4-depot-added-face ((t (:foreground "blue"))))
     (p4-depot-deleted-face ((t (:foreground "red"))))
     (p4-depot-unmapped-face ((t (:foreground "grey30"))))
     (p4-diff-change-face ((t (:foreground "dark green"))))
     (p4-diff-del-face ((t (:foreground "red"))))
     (p4-diff-file-face ((t (:background "gray90"))))
     (p4-diff-head-face ((t (:background "gray95"))))
     (p4-diff-ins-face ((t (:foreground "blue"))))
     (paren-blink-off ((t (:foreground "gray80"))))
     (paren-match ((t (:background "red" :foreground "white"))))
     (paren-mismatch ((t (:background "DeepPink"))))
     (pointer ((t (:foreground "blue"))))
     (popup-face ((t (:background "lightgray" :foreground "black"))))
     (popup-isearch-match ((t (:background "sky blue"))))
     (popup-menu-face ((t (:background "lightgray" :foreground "black"))))
     (popup-menu-selection-face ((t (:background "steelblue" :foreground "white"))))
     (popup-scroll-bar-background-face ((t (:background "gray"))))
     (popup-scroll-bar-foreground-face ((t (:background "black"))))
     (popup-tip-face ((t (:background "khaki1" :foreground "black"))))
     (primary-selection ((t (:background "gray65"))))
     (qt-classes-face ((t (:foreground "Red"))))
     (query-replace ((t (:foreground "red" :background "yellow"))))
     (red ((t (:foreground "red"))))
     (region ((t (:background "gray75"))))
     (right-margin ((t (nil))))
     (scroll-bar ((t (nil))))
     (search-buffers-face ((t (:bold t :background "royal blue" :foreground "white" :weight bold))))
     (search-buffers-header-face ((t (:bold t :background "ForestGreen" :weight bold))))
     (secondary-selection ((t (:background "paleturquoise"))))
     (sgml-comment-face ((t (:foreground "dark turquoise"))))
     (sgml-doctype-face ((t (:foreground "red"))))
     (sgml-end-tag-face ((t (:foreground "blue"))))
     (sgml-entity-face ((t (:foreground "magenta"))))
     (sgml-ignored-face ((t (:background "gray60" :foreground "gray40"))))
     (sgml-ms-end-face ((t (:foreground "green"))))
     (sgml-ms-start-face ((t (:foreground "green"))))
     (sgml-pi-face ((t (:foreground "lime green"))))
     (sgml-sgml-face ((t (:foreground "brown"))))
     (sgml-short-ref-face ((t (:foreground "deep sky blue"))))
     (sgml-start-tag-face ((t (:foreground "blue"))))
     (shadow ((t (:foreground "grey50"))))
     (show-paren-match ((t (:background "Aquamarine" :foreground "SlateBlue"))))
     (show-paren-mismatch ((t (:background "Red" :foreground "White"))))
     (sldb-catch-tag-face ((t (nil))))
     (sldb-condition-face ((t (nil))))
     (sldb-detailed-frame-line-face ((t (nil))))
     (sldb-frame-label-face ((t (nil))))
     (sldb-frame-line-face ((t (nil))))
     (sldb-local-name-face ((t (nil))))
     (sldb-local-value-face ((t (nil))))
     (sldb-non-restartable-frame-line-face ((t (nil))))
     (sldb-restart-face ((t (nil))))
     (sldb-restart-number-face ((t (:bold t :weight bold))))
     (sldb-restart-type-face ((t (:foreground "red1"))))
     (sldb-restartable-frame-line-face ((t (:foreground "lime green"))))
     (sldb-section-face ((t (nil))))
     (sldb-topline-face ((t (nil))))
     (slime-apropos-label ((t (:italic t :slant italic))))
     (slime-apropos-symbol ((t (:bold t :weight bold))))
     (slime-error-face ((t (:underline "red"))))
     (slime-highlight-face ((t (:background "darkolivegreen" :underline nil))))
     (slime-inspector-action-face ((t (:bold t :weight bold :foreground "Red"))))
     (slime-inspector-label-face ((t (:foreground "Aquamarine"))))
     (slime-inspector-topline-face ((t (nil))))
     (slime-inspector-type-face ((t (:foreground "#6920ac"))))
     (slime-inspector-value-face ((t (:foreground "LightSteelBlue"))))
     (slime-note-face ((t (:underline "brown4"))))
     (slime-repl-input-face ((t (:bold t :weight bold))))
     (slime-repl-output-face ((t (:foreground "green4"))))
     (slime-repl-prompt-face ((t (:foreground "red1"))))
     (slime-repl-result-face ((t (nil))))
     (slime-style-warning-face ((t (:underline "brown"))))
     (slime-warning-face ((t (:underline "orange"))))
     (speedbar-button-face ((t (:foreground "green4"))))
     (speedbar-directory-face ((t (:foreground "blue4"))))
     (speedbar-file-face ((t (:foreground "cyan4"))))
     (speedbar-highlight-face ((t (:background "green"))))
     (speedbar-selected-face ((t (:foreground "red" :underline t))))
     (speedbar-separator-face ((t (:background "blue" :foreground "white" :overline "gray"))))
     (speedbar-tag-face ((t (:foreground "brown"))))
     (success ((t (:bold t :foreground "ForestGreen" :weight bold))))
     (text-cursor ((t (:background "red" :foreground "LightYellow1"))))
     (tool-bar ((t (:background "Gray80" :foreground "black" :box (:line-width 1 :style released-button)))))
     (tooltip ((t (:background "lightyellow" :foreground "black"))))
     (trailing-whitespace ((t (:background "red1"))))
     (underline ((t (:underline t))))
     (variable-pitch ((t (:family "Sans Serif"))))
     (vcursor ((t (:background "cyan" :foreground "blue" :underline t))))
     (vertical-border ((t (nil))))
     (vertical-divider ((t (:background "Gray80"))))
     (warning ((t (:bold t :foreground "DarkOrange" :weight bold))))
     (widget ((t (nil))))
     (widget-button ((t (:bold t :weight bold))))
     (widget-button-pressed ((t (:foreground "red"))))
     (widget-documentation ((t (:foreground "dark green"))))
     (widget-field ((t (:background "gray85"))))
     (widget-inactive ((t (:foreground "dim gray"))))
     (widget-single-line-field ((t (:background "dim gray"))))
     (woman-bold-face ((t (:bold t :weight bold))))
     (woman-italic-face ((t (:foreground "beige"))))
     (woman-unknown-face ((t (:foreground "LightSalmon"))))
     (x-face ((t (:background "white"))))
     (xref-keyword-face ((t (:foreground "blue"))))
     (xref-list-pilot-face ((t (:foreground "navy"))))
     (xref-list-symbol-face ((t (:foreground "navy"))))
     (yellow ((t (:foreground "yellow"))))
     (zmacs-region ((t (:background "gray65" :foreground "yellow")))))))
(add-to-list 'color-themes '(color-theme-andreas  "Andreas" "Boris"))