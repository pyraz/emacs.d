;; Enable window-number mode, C-x C-j 1-9 to select window
(require 'window-number)
(window-number-mode)

;; Disable menu bar
(menu-bar-mode -1)

;; Enable ample color scheme
(load-theme 'cyberpunk t)

;; Turn on line numbers
(global-linum-mode t)

;; Enable copy and pasting from clipboard
(setq x-select-enable-clipboard t)

;; Expand Region
(require 'expand-region)
(global-set-key [(meta up)] 'er/expand-region)
(global-set-key (kbd "M-=") 'er/expand-region)
(global-set-key [(meta down)] 'er/contract-region)
(pending-delete-mode t)

;; Multiple Cursors
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C-c >") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c <") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; Undo Tree
(require 'undo-tree)
(global-undo-tree-mode)

;; Smartparens configuration
(require 'smartparens-config)
(require 'smartparens-ruby)
(smartparens-global-mode)
(show-smartparens-global-mode t)
(sp-with-modes '(rhtml-mode)
	(sp-local-pair "<" ">")
	(sp-local-pair "<%" "%>"))


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
