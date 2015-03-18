(require 'nix-mode)
(require 'haskell-mode-autoloads)
(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)
(add-hook 'haskell-mode-hook 
	    (lambda () (ghc-init)))
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)

(setq haskell-program-name "ghci")

