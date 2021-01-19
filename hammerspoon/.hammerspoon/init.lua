hs.loadSpoon("AClock")
hs.loadSpoon("WinWin")
hs.loadSpoon("WindowScreenLeftAndRight")
hs.loadSpoon("WindowHalfsAndThirds")
hs.loadSpoon("KSheet")

require "modules/config"
require "modules/app"
require "modules/window"
require "modules/screen"
require "modules/key"
require "modules/dashboard"
require "modules/layout"
require "modules/react"

hs.hotkey.bind(hyper, 'h', function()
                  hs.alert.show("Hello World!")
end)

hs.hotkey.bind(hyper, 'r', function()
                  hs.reload()
end)

hs.hotkey.bind(hyper, 'k', function()
    spoon.KSheet:toggle()
end)

hs.alert.show("Config loaded")
