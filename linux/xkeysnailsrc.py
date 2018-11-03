# -*- coding: utf-8 -*-

import re
from xkeysnail.transform import *

# [Global modemap] Change modifier keys as in xmodmap
define_modmap({
    Key.CAPSLOCK: Key.LEFT_CTRL,
    Key.LEFT_CTRL: Key.CAPSLOCK
})

# Keybindings for Firefox/Chrome
define_conditional_modmap(re.compile("Firefox|Google-chrome"), {
    Key.LEFT_ALT: Key.LEFT_CTRL,
    Key.LEFT_CTRL: Key.CAPSLOCK,
    Key.LEFT_META: Key.LEFT_ALT,
    Key.CAPSLOCK: Key.LEFT_META
})

define_keymap(re.compile("Firefox|Google-chrome"), {
    # remap switch tab shortcuts
    K("C-KEY_1"): K("M-KEY_1"),
    K("C-KEY_2"): K("M-KEY_2"),
    K("C-KEY_3"): K("M-KEY_3"),
    K("C-KEY_4"): K("M-KEY_4"),
    K("C-KEY_5"): K("M-KEY_5"),
    K("C-KEY_6"): K("M-KEY_6")
}, "Firefox and Chrome")

define_keymap(re.compile("Konsole"), {
    K("M-l"): K("C-l")
}, "Konsole");

# Emacs-like keybindings in non-Emacs applications (part)
define_keymap(lambda wm_class: wm_class not in ("Emacs", "URxvt", "Konsole"), {
    # Cursor
    K("Win-b"): with_mark(K("left")),
    K("Win-f"): with_mark(K("right")),
    K("Win-p"): with_mark(K("up")),
    K("Win-n"): with_mark(K("down")),
    K("Win-h"): with_mark(K("backspace")),
    # Forward/Backward word
    #K("Win-b"): with_mark(K("C-left")),
    #K("Win-f"): with_mark(K("C-right")),
    # Beginning/End of line
    K("Win-a"): with_mark(K("home")),
    K("Win-e"): with_mark(K("end")),
    # Page up/down
    #K("Win-v"): with_mark(K("page_up")),
    #K("C-v"): with_mark(K("page_down")),
    # Beginning/End of file
    # K("Win-Shift-comma"): with_mark(K("C-home")),
    # K("Win-Shift-dot"): with_mark(K("C-end")),
    # Newline
    # K("C-m"): K("enter"),
    # K("C-j"): K("enter"),
    # K("C-o"): [K("enter"), K("left")],
    # Copy
    #K("C-w"): [K("C-x"), set_mark(False)],
    K("Win-w"): [K("C-c"), set_mark(False)],
    K("Win-y"): [K("C-v"), set_mark(False)],
    # Delete
    K("Win-d"): [K("delete"), set_mark(False)],
    # K("Win-d"): [K("C-delete"), set_mark(False)],
    # Kill line
    K("Win-k"): [K("Shift-end"), K("C-x"), set_mark(False)],
    # Undo
    K("Win-slash"): [K("C-z"), set_mark(False)],
    # K("C-Shift-ro"): K("C-z"),
    # Mark
    K("Win-space"): set_mark(True),
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
