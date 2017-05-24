
local reading_layout= {
  {"Mail",    nil,  second_monitor, hs.layout.maximized,   nil, nil},
  {"Google Chrome",  nil,  main_monitor, hs.layout.left50,   nil, nil},
  {"Slack",  nil,  main_monitor, hs.layout.right50,   nil, nil},
}

local coding_layout= {
  {"Atom",   nil,  main_monitor, hs.layout.left50,   nil, nil},
  {"Chromium",  nil,  second_monitor, hs.layout.maximized,   nil, nil},
  {"iTerm2",  nil,  main_monitor, hs.layout.right50,   nil, nil},
}

hs.hotkey.bind(hyper, '1', function()
  hs.application.launchOrFocus('Mail')
  hs.application.launchOrFocus('Google Chrome')
  hs.application.launchOrFocus('Slack')

  hs.layout.apply(reading_layout)
end)

hs.hotkey.bind(hyper, '2', function()
  hs.application.launchOrFocus('Atom')
  hs.application.launchOrFocus('Chromium')
  hs.application.launchOrFocus('iTerm')

  hs.layout.apply(coding_layout)
end)
