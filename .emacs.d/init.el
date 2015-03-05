(require 'package)
(add-to-list 'package-archives 
         '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(mapcar
 (lambda (f) (load-file f))
 (file-expand-wildcards "~/.emacs.d/init/*.el"))
