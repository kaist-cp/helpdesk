;; Custom
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(coq-prog-name "/home/jeehoonkang/.opam/4.07.0/bin/coqtop")
 '(custom-safe-themes
   (quote
    ("31a01668c84d03862a970c471edbd377b2430868eccf5e8a9aec6831f1a0908d" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "1297a022df4228b81bc0436230f211bad168a117282c20ddcba2db8c6a200743" "1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" default)))
 '(display-time-mode t)
 '(exec-path-from-shell-variables (quote ("PATH" "MANPATH" "SHELL")))
 '(magit-emacsclient-executable "/Applications/Emacs.app/Contents/MacOS/bin/emacsclient")
 '(package-selected-packages
   (quote
    (proof-general edit-server edts company-erlang vue-html-mode cargo tuareg hc-zenburn-theme solarized-theme scala-mode rust-mode paredit paradox markdown-mode magit iy-go-to-char flycheck-rust flycheck-ocaml flycheck-haskell flycheck-google-cpplint flycheck-color-mode-line exec-path-from-shell el-autoyas company-coq coffee-mode auctex angular-snippets)))
 '(proof-three-window-mode-policy (quote hybrid))
 '(safe-local-variable-values
   (quote
    ((TeX-command-extra-options . "-shell-escape")
     (eval flet
           ((pre
             (s)
             (concat
              (locate-dominating-file buffer-file-name ".dir-locals.el")
              s)))
           (setq coq-load-path
                 (\`
                  ((rec
                    (\,
                     (pre "lib/sflib"))
                    "sflib")
                   (rec
                    (\,
                     (pre "lib/paco/src"))
                    "Paco")
                   (rec
                    (\,
                     (pre "lib/hahn"))
                    "cmem")
                   (rec
                    (\,
                     (pre "src/axiomatic"))
                    "cmem")
                   (rec
                    (\,
                     (pre "src/lib"))
                    "cmem")
                   (rec
                    (\,
                     (pre "src/opt"))
                    "cmem")
                   (rec
                    (\,
                     (pre "src/prop"))
                    "cmem")
                   (rec
                    (\,
                     (pre "src/lang"))
                    "cmem")
                   (rec
                    (\,
                     (pre "src/drf"))
                    "cmem")
                   (rec
                    (\,
                     (pre "src/hahn"))
                    "cmem")
                   (rec
                    (\,
                     (pre "src/while"))
                    "cmem")))))
     (coq-prog-args "-emacs-U")
     (eval flet
           ((pre
             (s)
             (concat
              (locate-dominating-file buffer-file-name ".dir-locals.el")
              s)))
           (setq coq-load-path
                 (\`
                  ((rec
                    (\,
                     (pre "."))
                    "compcert")))))
     (checkdoc-minor-mode . t)
     (require-final-newline . t)
     (mangle-whitespace . t))))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(coq-cheat-face ((t (:background "black"))))
 '(coq-solve-tactics-face ((t (:foreground "black"))))
 '(proof-eager-annotation-face ((t (:background "black"))))
 '(proof-error-face ((t (:background "black"))))
 '(proof-highlight-dependency-face ((t (:background "black"))))
 '(proof-highlight-dependent-face ((t (:background "black"))))
 '(proof-locked-face ((t (:background "#111111"))))
 '(proof-queue-face ((t (:background "#222222")))))

;; Package

(setq package-archives '(("melpa" . "http://melpa.org/packages/")
             ("org" . "http://orgmode.org/elpa/")
             ("gnu" . "http://elpa.gnu.org/packages/")))

(setq package-list
      '(paradox
        hc-zenburn-theme
        solarized-theme
        exec-path-from-shell
        auctex
        iy-go-to-char
        yasnippet
        angular-snippets
        el-autoyas
        magit
        tuareg
        scala-mode
        coffee-mode
        haskell-mode
        markdown-mode
        rust-mode
        cargo
        paredit
        flycheck
        ;; flycheck-google-cpplint
        flycheck-color-mode-line
        flycheck-ocaml
        flycheck-haskell
        flycheck-rust
        proof-general
        company-coq))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;; Column
(setq-default fill-column 100)

;; Desktop
(desktop-save-mode t)

;; Yasnippet
(setq-default yas/root-directory '("~/.emacs.d/yasnippet-snippets"))
(yas-global-mode t)

;; Buffers
(global-auto-revert-mode t)
(setq-default global-auto-revert-non-file-buffers t)
(global-set-key [(ctrl tab)] 'select-next-window)
(global-set-key [(ctrl shift tab)] 'select-previous-window)
(global-set-key "\C-x\C-k" 'kill-this-buffer)
(global-set-key "\C-x\C-n" 'next-buffer)
(global-set-key "\C-x\C-p" 'previous-buffer)
(global-set-key "\C-x\C-b" 'ibuffer)

(defun select-next-window ()
  (interactive)
  (select-window (next-window (selected-window))))

(defun select-previous-window ()
  (interactive)
  (select-window (previous-window (selected-window))))

;; Auto-save
(setq-default auto-save-default nil)
(setq-default auto-save-list-file-name nil)
(setq-default make-backup-files nil)

;; Flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

(eval-after-load "flycheck"
  '(add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode))

;; (eval-after-load 'flycheck
;;   '(progn
;;      (require 'flycheck-google-cpplint)
;;      ;; Add Google C++ Style checker.
;;      ;; In default, syntax checked by Clang and Cppcheck.
;;      (flycheck-add-next-checker 'c/c++-clang
;;                                 'c/c++-googlelint)))

;; Language
(set-language-environment 'UTF-8)
(set-language-environment-input-method "Korean")
(set-input-method 'korean-hangul)
(toggle-input-method)

;; Key binding
(defalias 'yes-or-no-p 'y-or-n-p)
(global-set-key "\C-s" 'isearch-forward-regexp)
(global-set-key "\C-r" 'isearch-backward-regexp)
(global-set-key "\C-c\C-q" 'comment-or-uncomment-region)
(global-set-key "\C-w" 'clipboard-kill-region)
(global-set-key "\M-w" 'clipboard-kill-ring-save)
(global-set-key "\C-m" 'newline-and-indent)
(global-set-key "\C-z" 'eshell)
(global-set-key [(ctrl return)] 'ff-find-other-file)

;; Theme
;; (load-theme 'solarized-dark t)
(load-theme 'hc-zenburn t)
(add-to-list 'default-frame-alist '(height . 42))
(add-to-list 'default-frame-alist '(width . 140))
(add-to-list 'default-frame-alist '(font . "Hack 12" ))
(set-face-attribute 'default t :font "Hack 12" )
;; (add-to-list 'default-frame-alist '(font . "Droid Sans Mono 16" ))
;; (set-face-attribute 'default t :font "Droid Sans Mono 16" )
;; (set-default-font "Menlo for Powerline 16")
;; (set-default-font "Droid San Mono 16")
(global-font-lock-mode t)
(setq-default initial-scratch-message "")
(setq-default inhibit-startup-screen t)
(setq-default search-highlight t)
(setq-default query-replace-highlight t)

;; Syntax
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq-default c-basic-indent 2)
(setq-default standard-indent 2)
(setq-default auto-fill-mode t)

;; Magit
(global-set-key (kbd "C-x g") 'magit-status)

;; Uniquify
(require 'uniquify)
(setq
 uniquify-buffer-name-style 'forward
 uniquify-separator "/")

;; Shell
(add-to-list 'auto-mode-alist '(".*.csh\\'" . shell-script-mode))
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;; ProofGeneral
(add-hook 'coq-mode-hook #'company-coq-mode)

;; Rust
(add-hook 'rust-mode-hook #'cargo-minor-mode)


(setq-default proof-three-window-enable t)
(setq-default proof-shell-process-connection-type nil)
(add-to-list 'auto-mode-alist '(".*.v\\'" . coq-mode))

;; C
(setq-default c-basic-offset 2)
(setq-default c-offsets-alist
              '((substatement-open . 0)))

;; TeX
(if (eq system-type 'darwin)
    (progn
      (require 'tex-site)
                                        ; (load "preview-latex.el" nil t t)
      (add-hook 'TeX-mode-hook
                '(lambda ()
                   (define-key TeX-mode-map "\C-c\C-z" 'TeX-home-buffer)))
      (require 'reftex)
      (add-hook 'LaTeX-mode-hook 'turn-on-reftex)
      (setq-default LaTeX-command "latex -shell-escape")
      (setq-default TeX-PDF-mode t)
      (setq-default TeX-command-list (quote (("TeX" "%(PDF)%(tex) %`%S%(PDFout)%(mode)%' %t" TeX-run-TeX nil (plain-tex-mode texinfo-mode ams-tex-mode) :help "Run plain TeX") ("LaTeX" "%`%l%(mode)%' %t" TeX-run-TeX nil (latex-mode doctex-mode) :help "Run LaTeX") ("Makeinfo" "makeinfo %t" TeX-run-compile nil (texinfo-mode) :help "Run Makeinfo with Info output") ("Makeinfo HTML" "makeinfo --html %t" TeX-run-compile nil (texinfo-mode) :help "Run Makeinfo with HTML output") ("AmSTeX" "%(PDF)amstex %`%S%(PDFout)%(mode)%' %t" TeX-run-TeX nil (ams-tex-mode) :help "Run AMSTeX") ("ConTeXt" "texexec --once --texutil %(execopts)%t" TeX-run-TeX nil (context-mode) :help "Run ConTeXt once") ("ConTeXt Full" "texexec %(execopts)%t" TeX-run-TeX nil (context-mode) :help "Run ConTeXt until completion") ("BibTeX" "bibtex %s" TeX-run-BibTeX nil t :help "Run BibTeX") ("View" "%V" TeX-run-discard-or-function t t :help "Run Viewer") ("Print" "%p" TeX-run-command t t :help "Print the file") ("Queue" "%q" TeX-run-background nil t :help "View the printer queue" :visible TeX-queue-command) ("File" "%(o?)dvips %d -o %f " TeX-run-command t t :help "Generate PostScript file") ("Index" "makeindex %s" TeX-run-command nil t :help "Create index file") ("Check" "lacheck %s" TeX-run-compile nil (latex-mode) :help "Check LaTeX file for correctness") ("Spell" "(TeX-ispell-document \"\")" TeX-run-function nil t :help "Spell-check the document") ("Clean" "TeX-clean" TeX-run-function nil t :help "Delete generated intermediate files") ("Clean All" "(TeX-clean t)" TeX-run-function nil t :help "Delete generated intermediate and output files") ("Other" "" TeX-run-command t t :help "Run an arbitrary command") ("XeLaTeX" "xelatex %t" TeX-run-command nil (latex-mode) :help "Run XeLaTeX"))))
      ))

;; Racket
(add-to-list 'auto-mode-alist '(".*.rkt\\'" . scheme-mode))
(add-hook 'scheme-mode-hook (lambda () (paredit-mode t)))

;; Mac
(if (eq system-type 'darwin)
    (progn
      (setq-default mac-option-key-is-meta nil)
      (setq-default mac-command-key-is-meta t)
      (setq-default mac-command-modifier 'meta)
      (setq-default mac-option-modifier 'none)
      (setq-default TeX-view-program-list (quote (("Skim" ("open %o")))))
      (setq-default TeX-view-program-selection
                    (quote (((output-dvi style-pstricks) "dvips and gv") (output-dvi "xdvi") (output-pdf "Skim") (output-html "xdg-open"))))

      ;; Path
      (setq-default explicit-shell-file-name "/bin/zsh")
      (exec-path-from-shell-initialize)
      ))

;; Ispell
(setq-default ispell-program-name "aspell")
(ispell-change-dictionary "english")

(setq ring-bell-function 'ignore)

;; PATH
(setenv
 "PATH"
 (concat
  (getenv "HOME")
  "/.local/bin" ";"
  (getenv "PATH")))

;; uniquify

(defun uniq-lines (beg end)
  "Unique lines in region. Called from a program, there are two arguments: BEG and END (region to sort)."
  (interactive "r")
  (save-excursion
    (save-restriction
      (narrow-to-region beg end)
      (goto-char (point-min))
      (while (not (eobp))
        (kill-line 1)
        (yank)
        (let ((next-line (point)))
          (while
              (re-search-forward
               (format "^%s" (regexp-quote (car kill-ring))) nil t)
            (replace-match "" nil nil))
          (goto-char next-line))))))

;; JavaScript

(setq js-indent-level 2)

;; Ispell for Dired

(defun dired-do-ispell (&optional arg)
  (interactive "P")
  (dolist (file (dired-get-marked-files
                 nil arg
                 #'(lambda (f)
                     (not (file-directory-p f)))))
    (save-window-excursion
      (with-current-buffer (find-file file)
        (ispell-buffer)))
    (message nil)))
