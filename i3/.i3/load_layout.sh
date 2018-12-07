#!/bin/bash

# set $ws1 1
# set $ws2 2
# set $ws3 3
# set $ws4 4
# set $ws5 5
# set $ws6 6
# set $ws7 7
# set $ws8 8
# First we append the saved layout of worspace N to workspace M
i3-msg "workspace 1; append_layout ~/.i3/workspace-1.json"
# And finally we fill the containers with the programs they
(urxvt &)

i3-msg "workspace 2; append_layout ~/.i3/workspace-2.json"
(google-chrome-stable &)

i3-msg "workspace 3; append_layout ~/.i3/workspace-3.json"
(emacs &)

i3-msg "workspace 4; append_layout ~/.i3/workspace-4.json"
(emacs &)

i3-msg "workspace 5; append_layout ~/.i3/workspace-5.json"
(caja &)
i3-msg "workspace 6; append_layout ~/.i3/workspace-6.json"
(chromium &)
i3-msg "workspace 7; append_layout ~/.i3/workspace-7.json"
(urxvt &)
i3-msg "workspace 8; append_layout ~/.i3/workspace-8.json"
(urxvt &)