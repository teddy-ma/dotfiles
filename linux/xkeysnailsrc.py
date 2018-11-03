# -*- coding: utf-8 -*-

import re
from xkeysnail.transform import *

# [Global modemap] Change modifier keys as in xmodmap
define_modmap({
    Key.CAPSLOCK: Key.LEFT_CTRL
})

# Keybindings for Firefox/Chrome
define_conditional_modmap(lambda wm_class: wm_class not in ("Emacs", "URxvt", "Konsole", {
    Key.LEFT_ALT: Key.LEFT_META,
    Key.LEFT_META: Key.LEFT_ALT,
    Key.CAPSLOCK: Key.LEFT_ALT
})

define_keymap(re.compile("Firefox|Google-chrome"), {
    # Ctrl+Alt+j/k to switch next/previous tab
    #Key.LEFT_META: Key.LEFT_CTRL,
    #Key.LEFT_CTRL: Key.LEFT_META
    #K("C-M-j"): K("C-TAB"),
    #K("C-M-k"): K("C-Shift-TAB"),
    # Type C-j to focus to the content
    #K("C-j"): K("C-f6"),
    # very naive "Edit in editor" feature (just an example)
    #K("C-o"): [K("C-a"), K("C-c"), launch(["gedit"]), sleep(0.5), K("C-v")]
}, "Firefox and Chrome")

# Emacs-like keybindings in non-Emacs applications (part)
define_keymap(lambda wm_class: wm_class not in ("Emacs", "URxvt", "Konsole"), {
    # Cursor
    K("M-b"): with_mark(K("left")),
    K("M-f"): with_mark(K("right")),
    K("M-p"): with_mark(K("up")),
    K("M-n"): with_mark(K("down")),
    K("M-h"): with_mark(K("backspace")),
    # Forward/Backward word
    #K("M-b"): with_mark(K("C-left")),
    #K("M-f"): with_mark(K("C-right")),
    # Beginning/End of line
    K("M-a"): with_mark(K("home")),
    K("M-e"): with_mark(K("end")),
    # Page up/down
    #K("M-v"): with_mark(K("page_up")),
    #K("C-v"): with_mark(K("page_down")),
    # Beginning/End of file
    K("M-Shift-comma"): with_mark(K("C-home")),
    K("M-Shift-dot"): with_mark(K("C-end")),
    # Newline
    # K("C-m"): K("enter"),
    # K("C-j"): K("enter"),
    # K("C-o"): [K("enter"), K("left")],
    # Copy
    #K("C-w"): [K("C-x"), set_mark(False)],
    K("M-w"): [K("C-c"), set_mark(False)],
    K("M-y"): [K("C-v"), set_mark(False)],
    # Delete
    K("M-d"): [K("delete"), set_mark(False)],
    # K("M-d"): [K("C-delete"), set_mark(False)],
    # Kill line
    K("M-k"): [K("Shift-end"), K("C-x"), set_mark(False)],
    # Undo
    K("M-slash"): [K("C-z"), set_mark(False)],
    # K("C-Shift-ro"): K("C-z"),
    # Mark
    K("M-space"): set_mark(True),
    #K("C-M-space"): with_or_set_mark(K("C-right")),
    # Search
    # K("C-s"): K("F3"),
    # K("C-r"): K("Shift-F3"),
    # K("M-Shift-key_5"): K("C-h"),
    # Cancel
    # K("C-g"): [K("esc"), set_mark(False)],
    # Escape
    # K("C-q"): escape_next_key,
    # C-x YYY
    # K("C-x"): {
    #     # C-x h (select all)
    #     K("h"): [K("C-home"), K("C-a"), set_mark(True)],
    #     # C-x C-f (open)
    #     K("C-f"): K("C-o"),
    #     # C-x C-s (save)
    #     K("C-s"): K("C-s"),
    #     # C-x k (kill tab)
    #     K("k"): K("C-f4"),
    #     # C-x C-c (exit)
    #     K("C-c"): K("C-q"),
    #     # cancel
    #     K("C-g"): pass_through_key,
    #     # C-x u (undo)
    #     K("u"): [K("C-z"), set_mark(False)],
    # }
}, "Emacs-like keys")
