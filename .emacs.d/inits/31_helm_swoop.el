;; swoop
;; helm from https://github.com/emacs-helm/helm
;; helm-swoopを使うためにはhelmが必要です
(require 'helm)

;; helm-swoopフォルダを任意の位置に置きます
(add-to-list 'load-path "~/.emacs.d/elisp/helm-swoop")
(require 'helm-swoop)

;; キーバインドはお好みで
(global-set-key (kbd "M-i") 'helm-swoop)
(global-set-key (kbd "M-I") 'helm-swoop-back-to-last-point)
(global-set-key (kbd "C-c M-i") 'helm-multi-swoop)
(global-set-key (kbd "C-x M-i") 'helm-multi-swoop-all)
;;C-c C-eで編集モード

;; isearch実行中にhelm-swoopに移行
(define-key isearch-mode-map (kbd "M-i") 'helm-swoop-from-isearch)
;; helm-swoop実行中にhelm-multi-swoop-allに移行
(define-key helm-swoop-map (kbd "M-i") 'helm-multi-swoop-all-from-helm-swoop)

;; Save buffer when helm-multi-swoop-edit complete
(setq helm-multi-swoop-edit-save t)

;; 値がtの場合はウィンドウ内に分割、nilなら別のウィンドウを使用
(setq helm-swoop-split-with-multiple-windows nil)

;; ウィンドウ分割方向 'split-window-vertically or 'split-window-horizontally
(setq helm-swoop-split-direction 'split-window-vertically)

;; nilなら一覧のテキストカラーを失う代わりに、起動スピードをほんの少し上げる
(setq helm-swoop-speed-or-color t)
