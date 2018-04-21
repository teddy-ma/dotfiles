hs.loadSpoon("AClock")
hs.loadSpoon("WinWin")
hs.loadSpoon("WindowScreenLeftAndRight")
hs.loadSpoon("WindowHalfsAndThirds")

require "modules/config"
require "modules/app"
require "modules/window"
require "modules/layout"
require "modules/react"

hs.hotkey.bind(hyper, 'r', function()
  hs.reload()
end)
