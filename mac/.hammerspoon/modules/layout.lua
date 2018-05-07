local reading_layout= {
  {"Emacs",         nil, macbook_monitor, hs.layout.maximized, nil, nil},
  {"Google Chrome", nil, main_monitor,    hs.layout.right50,   nil, nil},
  {"iBooks",        nil, main_monitor,    hs.layout.left50,    nil, nil},
  {"Telegram",      nil, second_monitor,  hs.layout.left50,    nil, nil},
  {"Mail",          nil, second_monitor,  hs.layout.right50,   nil, nil},
}

local coding_layout= {
  {"Terminal",      nil, macbook_monitor, hs.layout.maximized, nil, nil},
  {"Google Chrome", nil, main_monitor,    hs.layout.left50,    nil, nil},
  {"Emacs",         nil, main_monitor,    hs.layout.right50,   nil, nil},
  {"Station",       nil, second_monitor,  hs.layout.left50,    nil, nil},
  {"TablePlus",     nil, second_monitor,  hs.layout.right50,   nil, nil},
}

local writing_layout= {
  {"Emacs",         nil, main_monitor,    hs.layout.maximized, nil, nil},
  {"Google Chrome", nil, second_monitor,  hs.layout.maximized, nil, nil},
  {"IINA",          nil, macbook_monitor, hs.layout.maximized, nil, nil},
}

hs.hotkey.bind(hyper, '1', function()
  hs.application.launchOrFocus('Emacs')
  hs.application.launchOrFocus('Google Chrome')
  hs.application.launchOrFocus('iBooks')
  hs.application.launchOrFocus('Telegram')
  hs.application.launchOrFocus('Mail')

  hs.layout.apply(reading_layout)
end)

hs.hotkey.bind(hyper, '2', function()
  hs.application.launchOrFocus('Terminal')
  hs.application.launchOrFocus('Google Chrome')
  hs.application.launchOrFocus('Emacs')
  hs.application.launchOrFocus('Station')
  hs.application.launchOrFocus('TablePlus')

  hs.layout.apply(coding_layout)
end)

hs.hotkey.bind(hyper, '3', function()
  hs.application.launchOrFocus('Google Chrome')
  hs.application.launchOrFocus('Emacs')
  hs.application.launchOrFocus('IINA')

  hs.layout.apply(writing_layout)
end)
