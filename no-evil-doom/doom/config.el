;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))

;; Increased font size and specified the Nerd Font installed on your system
(setq doom-font (font-spec :family "JetBrainsMono Nerd Font Mono" :size 20 :weight 'regular))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;; doom-one provides a good base, but we override it heavily below
;; to match the specific chat UI colors you requested, with a pitch-black background.
(setq doom-theme 'doom-one)
(custom-set-faces!
  '(default :background "#000000" :foreground "#d4d4d4")
  '(solaire-default-face :background "#000000")
  '(hl-line :background "#1a1a1a")
  
  ;; Standard font-lock overrides
  '(font-lock-comment-face :foreground "#8b949e" :slant normal)
  '(font-lock-doc-face :foreground "#8b949e" :slant normal)
  '(font-lock-keyword-face :foreground "#89ddff" :slant normal)
  '(font-lock-string-face :foreground "#c3e88d")
  '(font-lock-variable-name-face :foreground "#d4d4d4")
  
  ;; Changed from Yellow to Dark Blue (functions, classes, types, methods)
  '(font-lock-function-name-face :foreground "#3b82f6" :slant normal)
  '(font-lock-type-face :foreground "#3b82f6" :slant normal)
  '(font-lock-builtin-face :foreground "#3b82f6" :slant normal)
  
  ;; Emacs 29 treesit faces (these are often what is actually used now!)
  '(font-lock-function-call-face :foreground "#3b82f6" :slant normal)
  '(font-lock-property-face :foreground "#3b82f6" :slant normal)
  '(font-lock-property-use-face :foreground "#3b82f6" :slant normal)
  
  ;; Changed from Purple to Yellow (numbers, booleans, constants)
  '(font-lock-constant-face :foreground "#ffcb6b" :slant normal)
  
  ;; Tree-sitter package specific overrides
  '(tree-sitter-hl-face:function :foreground "#3b82f6" :slant normal)
  '(tree-sitter-hl-face:function.call :foreground "#3b82f6" :slant normal)
  '(tree-sitter-hl-face:method :foreground "#3b82f6" :slant normal)
  '(tree-sitter-hl-face:method.call :foreground "#3b82f6" :slant normal)
  '(tree-sitter-hl-face:type :foreground "#3b82f6" :slant normal)
  '(tree-sitter-hl-face:type.builtin :foreground "#3b82f6" :slant normal)
  '(tree-sitter-hl-face:constructor :foreground "#3b82f6" :slant normal)
  '(tree-sitter-hl-face:builtin :foreground "#3b82f6" :slant normal)
  '(tree-sitter-hl-face:number :foreground "#ffcb6b" :slant normal)
  '(tree-sitter-hl-face:constant :foreground "#ffcb6b" :slant normal)
  '(tree-sitter-hl-face:constant.builtin :foreground "#ffcb6b" :slant normal)
  '(tree-sitter-hl-face:string :foreground "#c3e88d" :slant normal)
  '(tree-sitter-hl-face:comment :foreground "#8b949e" :slant normal)
  '(tree-sitter-hl-face:keyword :foreground "#89ddff" :slant normal))

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `with-eval-after-load' block, otherwise Doom's defaults may override your
;; settings. E.g.
;;
;;   (with-eval-after-load 'PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look them up).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; ==============================================================================
;; 🐍 PYTHON CRASH COURSE WORKFLOW (A LEARNING GUIDE)
;; ==============================================================================
;; This section is written in Emacs Lisp (Elisp). It creates custom commands to 
;; make your learning workflow smoother. Here is how it works:

;; 1. Variables (defvar)
;; We use `defvar` to define variables that store the paths to your files.
;; `expand-file-name` makes sure the path is absolute (starting from /home/...)
(defvar netrover/pcc-project-dir
  (expand-file-name "~/python-crash-course/python_crash_course/")
  "Root directory for Python Crash Course exercises.")

(defvar netrover/pcc-main-pdf
  (expand-file-name "python_crash.pdf" netrover/pcc-project-dir)
  "Main Python Crash Course PDF.")

;; Tell Emacs to automatically scroll to the bottom when compiling code
(setq compilation-scroll-output t)

;; 2. Functions (defun)
;; `defun` defines a new function. 
(defun netrover/run-current-python-file ()
  "Save and run the current Python file."
  ;; The `(interactive)` declaration is crucial! It tells Emacs that this function
  ;; can be run directly by a user (via a keybinding or M-x). Without it, it would
  ;; just be a hidden background function.
  (interactive)
  
  ;; Safety checks: Ensure we are in a file, and that it ends in .py
  (unless buffer-file-name
    (user-error "Current buffer is not visiting a file"))
  (unless (string-match-p "\\.py\\'" buffer-file-name)
    (user-error "Open a .py file first"))
    
  ;; Automatically save before running so you don't forget!
  (save-buffer)
  
  ;; `let` creates temporary variables that only exist inside this block.
  (let ((default-directory (or (ignore-errors (projectile-project-root))
                               default-directory))
        ;; We override `display-buffer-overriding-action` temporarily here.
        ;; This forces the compile output window to split *below* the current code 
        ;; window and take up exactly 15 lines, rather than ruining your PDF layout.
        (display-buffer-overriding-action '((display-buffer-reuse-window
                                             display-buffer-below-selected)
                                            (window-height . 15))))
    ;; Run the actual compile command. 
    ;; `-u` forces Python to be "unbuffered", which is required for input() prompts to work.
    (compile (format "python3 -u %s" (shell-quote-argument buffer-file-name)) t)))

(defun netrover/open-pcc-layout ()
  "Open a coding buffer and the Python Crash Course PDF side-by-side."
  (interactive)
  (unless (file-directory-p netrover/pcc-project-dir)
    (user-error "Project directory not found: %s" netrover/pcc-project-dir))
  (unless (file-exists-p netrover/pcc-main-pdf)
    (user-error "PDF not found: %s" netrover/pcc-main-pdf))
    
  ;; Find the first .py file in the directory to open as a starter
  (let ((starter-file (car (directory-files netrover/pcc-project-dir
                                             t "\\.py\\'" t))))
    ;; Clear all existing splits
    (delete-other-windows)
    
    ;; Open the python file (or the directory if no python file exists yet)
    (if starter-file
        (find-file starter-file)
      (dired netrover/pcc-project-dir))
      
    ;; Split the screen to the right, jump into that new window, open the PDF, 
    ;; and then jump back (-1) to the code window!
    (split-window-right)
    (other-window 1)
    (find-file netrover/pcc-main-pdf)
    (other-window -1)))

;; ... (PDF Dark mode settings remain unchanged below) ...
(after! pdf-view
  (setq-default pdf-view-display-size 'fit-width)
  (add-hook 'pdf-view-mode-hook #'pdf-view-midnight-minor-mode)
  (setq pdf-view-midnight-colors '("#ffffff" . "#000000")))

;; 3. Keybindings (global-set-key)
;; Finally, we bind the `interactive` functions we created above to actual keys.
;; `kbd` translates human-readable strings like "C-c" into Emacs keycodes.
;; The `#'` syntax is how we safely reference a function name in Elisp.
(global-set-key (kbd "<f5>") #'netrover/run-current-python-file)
(global-set-key (kbd "C-c C-r") #'netrover/run-current-python-file)
(global-set-key (kbd "C-c C-p") #'netrover/open-pcc-layout)


;; Enable Zen mode (writeroom-mode) always, everywhere
;; Prevent Zen mode from artificially increasing the font size
(setq +zen-text-scale 0)
(global-writeroom-mode 1)

;; Enable word wrap (soft wrapping) everywhere by default
(global-visual-line-mode 1)
