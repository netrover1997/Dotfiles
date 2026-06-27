# Doom Emacs Comprehensive Cheatsheet (Non-Evil Mode)

> [!NOTE]
> This expanded cheatsheet covers the core Emacs philosophy of keeping your hands on the home row. In standard Emacs terminology:
> - **`C-`** means **Control**
> - **`M-`** means **Meta** (which is the **Alt** or Option key on modern keyboards)
> - **`S-`** means **Shift**

---

## 🌟 Your Custom Bindings (from `config.el`)
These are the special shortcuts created specifically for your Python Crash Course workflow. Because you defined these, they are uniquely yours!

| Keybinding | Action & Explanation |
| :--- | :--- |
| `<f5>` or `C-c C-r` | **Save and Run Python:** This custom command will automatically save the file you are currently working on and execute it using Python 3, opening a dedicated compilation window at the bottom of the screen to show the output. |
| `C-c C-p` | **Open Python + PDF Layout:** This incredibly handy shortcut splits your screen horizontally. It opens the root directory of your Python Crash Course on the left side, and automatically loads the main textbook PDF (`python_crash.pdf`) on the right side. |

---

## 💻 Terminal Popups & Shells
Doom Emacs has fantastic integration with terminal emulators. 

| Keybinding | Action & Explanation |
| :--- | :--- |
| `M-x +vterm/toggle` | **Toggle Popup Terminal:** Opens a blazing fast terminal (vterm) at the bottom of your screen. If you run this command again, the terminal will slide away and hide (but keep running in the background!). |
| `M-x vterm` | **Open Full Terminal:** Opens a full-screen terminal buffer instead of a small popup at the bottom. |
| `C-d` (inside terminal) | **Close Terminal:** When you are focused inside a terminal, pressing `C-d` on an empty prompt will terminate the shell and close the terminal window automatically. |

---

## 📁 Files & Directories
Managing files is the bread and butter of Emacs.

| Keybinding | Action & Explanation |
| :--- | :--- |
| `C-x C-f` | **Find/Open File:** Opens a prompt at the bottom of the screen to type a file path. Doom provides fuzzy-matching, meaning you don't have to type the name perfectly. |
| `C-x C-s` | **Save File:** Saves the current buffer to the disk. Get into the habit of pressing this constantly! |
| `C-x C-w` | **Save As (Write to):** Prompts you for a new filename and saves a copy of the current buffer to that new location. |
| `C-x d` | **Open Dired (Directory Editor):** Opens a powerful visual file manager inside Emacs. You can use it to rename, delete, and copy files in bulk. |

---

## 📚 Buffers (Open Files)
Emacs calls an open file a "Buffer". You can have hundreds of buffers open in the background without slowing down your computer.

| Keybinding | Action & Explanation |
| :--- | :--- |
| `C-x b` | **Switch Buffer:** Opens a fuzzy-search menu to quickly jump to any file you already have open. |
| `C-x k` | **Kill Buffer:** Closes the current file you are looking at. Emacs will warn you if you have unsaved changes. |
| `C-x s` | **Save Some/All Buffers:** Asks you if you want to save every single file you've modified but haven't saved yet. |

---

## 🪟 Window Management (Splits)
Emacs calls the physical divisions on your screen "Windows" (not to be confused with your operating system's windows).

| Keybinding | Action & Explanation |
| :--- | :--- |
| `C-x 2` | **Split Horizontally:** Slices your current view in half, creating a new window below the current one. |
| `C-x 3` | **Split Vertically:** Slices your current view in half, creating a new window to the right. |
| `C-x o` | **Other Window:** Moves your cursor to the next split window. If you have 3 splits, it cycles through them. |
| `C-x 0` | **Close Current Split:** Closes the specific split you are currently focused on (the file stays open in the background, you just can't see it). |
| `C-x 1` | **Maximize / Close Others:** Closes every single split *except* the one you are currently looking at, making it full screen. |
| `C-x +` | **Balance Windows:** If you've been resizing windows and they look messy, this evenly distributes the screen space between all open splits. |

---

## 🚀 Navigation & Movement
Mastering these means you never have to reach for the mouse or the arrow keys again!

| Keybinding | Action & Explanation |
| :--- | :--- |
| `C-f` / `C-b` | **Forward / Backward Character:** Moves the cursor left or right by a single character. |
| `C-n` / `C-p` | **Next / Previous Line:** Moves the cursor down or up by a single line. |
| `M-f` / `M-b` | **Forward / Backward Word:** Jumps the cursor forward or backward by an entire word at a time. |
| `C-a` / `C-e` | **Beginning / End of Line:** Instantly rockets your cursor to the absolute start (`C-a`) or absolute end (`C-e`) of the current line. |
| `M-<` / `M->` | **Beginning / End of File:** Jumps to the absolute top (`M-<`) or the absolute bottom (`M->`) of the entire document. |

---

## ✂️ Editing & Text Manipulation
Emacs has incredibly powerful text editing tools built right into the core shortcuts.

| Keybinding | Action & Explanation |
| :--- | :--- |
| `C-space` | **Set Mark:** This acts as an "anchor". After pressing it, use your movement keys to highlight a chunk of text. |
| `C-w` | **Kill (Cut) Region:** Cuts the text you currently have highlighted. |
| `M-w` | **Copy Region:** Copies the text you currently have highlighted. |
| `C-y` | **Yank (Paste):** Pastes whatever you last cut or copied. |
| `M-y` | **Yank Pop (Cycle Paste):** If you press `C-y` and paste the wrong thing, immediately press `M-y` to cycle back through your clipboard history and paste something you copied 5 minutes ago! |
| `C-k` | **Kill Line:** A massively useful shortcut. It instantly deletes everything from your cursor to the end of the line. |
| `C-/` | **Undo:** Undoes your last action. |

---

## 🔎 Searching & Replacing
Finding things in large codebases is incredibly fast with `isearch`.

| Keybinding | Action & Explanation |
| :--- | :--- |
| `C-s` | **Search Forward:** Starts an interactive search. As you type, it jumps to the match. Press `C-s` again to jump to the *next* match. |
| `C-r` | **Search Backward:** Exactly like `C-s`, but searches backwards up the document. |
| `M-%` | **Query Replace:** Type the word you want to find, press Enter, then type the replacement word. Emacs will highlight each match and ask you: press `y` to replace it, `n` to skip it, or `!` to replace all remaining matches instantly. |
| `C-g` | **Cancel / Abort:** The most important shortcut in Emacs! If you get stuck in a search, or accidentally start a command you don't understand, mash `C-g` to cancel out of it safely. |

---

## 🧠 Help & Discovery (The "Self-Documenting" Editor)
Emacs is famous because it comes with manuals for everything built right in.

| Keybinding | Action & Explanation |
| :--- | :--- |
| `M-x` | **Execute Command:** Opens the Command Palette. You can type *any* command in Emacs here to run it (like `M-x calendar` or `M-x tetris`). |
| `C-h k` | **Describe Keybinding:** Press this, then press *any other key shortcut*. Emacs will open a window explaining exactly what that shortcut does! |
| `C-h v` | **Describe Variable:** Lets you search for any configuration variable and see what it is currently set to. |
| `C-h f` | **Describe Function:** Lets you look up what any function does in the code. |
