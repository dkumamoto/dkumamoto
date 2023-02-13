(global-set-key "\b" 'delete-backward-char)

(put 'downcase-region 'disabled nil)

(put 'upcase-region 'disabled nil)

(global-set-key "\M-g" 'goto-line)

(global-set-key "\M-r" 'revert-buffer)

(defun toggle-truncate-lines ()
  "Toggle line wrapping via truncate-lines variable."
  (interactive)
  (if truncate-lines
      (setq truncate-lines nil)
    (setq truncate-lines t))
  (redraw-display))

(global-set-key "\M-t" 'toggle-truncate-lines)

;cygwin: (global-set-key "\C-x\C-c" 'save-buffers-kill-emacs)
;cygwin: (global-set-key "\C-x\C-g" 'save-buffers-kill-emacs)
