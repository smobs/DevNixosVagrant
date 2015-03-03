(require 'package)
(add-to-list 'package-archives 
         '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(mapcar
 (lambda (f) (load-file f))
 (file-expand-wildcards "~/.emacs.d/init/*.el"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(haskell-program-name "ghci"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
