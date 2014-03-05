;; Disable menu bar
(menu-bar-mode -1)

;; Window size to left half of screen
(setq initial-frame-alist '((top . 0) (left . 0) (width . 85) (height . 90)))

;; Enable Cyberpunk color scheme
(load-theme 'cyberpunk t)

;; Turn on line numbers
(global-linum-mode t)

;; Enable copy and pasting from clipboard
(setq x-select-enable-clipboard t)

;; Hippie Expand
(global-set-key (kbd "M-/") 'hippie-expand)

;; Expand Region
(require 'expand-region)
(global-set-key [(meta up)] 'er/expand-region)
(global-set-key (kbd "M-=") 'er/expand-region)
(global-set-key [(meta down)] 'er/contract-region)
(pending-delete-mode t)

;; Multiple Cursors
(require 'multiple-cursors)
(global-set-key (kbd "C-c 8") 'mc/edit-lines)
(global-set-key (kbd "C-.") 'mc/mark-next-like-this)
(global-set-key (kbd "C-,") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-,") 'mc/mark-all-like-this)

;; iy-go-to-char
(require 'iy-go-to-char)
;; work better with multiple cursors
(add-to-list 'mc/cursor-specific-vars 'iy-go-to-char-start-pos)
(global-set-key (kbd "C-c f") 'iy-go-to-char)
(global-set-key (kbd "C-c F") 'iy-go-to-char-backward)
(global-set-key (kbd "C-c ;") 'iy-go-to-or-up-to-continue)
(global-set-key (kbd "C-c ,") 'iy-go-to-or-up-to-continue-backward)

;; Undo Tree
(require 'undo-tree)
(global-undo-tree-mode)

;; This appears to be breaking multiple-cursors
;; Smartparens configuration
;;(require 'smartparens-config)
;;(require 'smartparens-ruby)
;;(smartparens-global-mode)
;;(show-smartparens-global-mode t)
;;(sp-with-modes '(rhtml-mode)
;;	(sp-local-pair "<" ">")
;;	(sp-local-pair "<%" "%>"))


;; Rainbow Delimiters in all programming modes
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; Flyspell configuration
(require 'flyspell)
(setq flyspell-issue-message-flg nil)
(add-hook 'enh-ruby-mode-hook
          (lambda () (flyspell-prog-mode)))

(add-hook 'web-mode-hook
          (lambda () (flyspell-prog-mode)))
