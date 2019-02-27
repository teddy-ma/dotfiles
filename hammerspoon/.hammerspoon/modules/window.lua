-- hs.hotkey.bind(hyper, 'right', function() spoon.WinWin:moveToScreen("right") end)
spoon.WindowScreenLeftAndRight:bindHotkeys({
  screen_left = { hyperShift, "Left" },
  screen_right= { hyperShift, "Right" },
})

spoon.WindowHalfsAndThirds:bindHotkeys({
  left_half   = { hyper, "Left" },
  right_half  = { hyper, "Right" },
  top_half    = { hyper, "Up" },
  bottom_half = { hyper, "Down" },
})

hs.hotkey.bind(hyper, "m", function()
  local win = hs.window.focusedWindow()
  win:maximize()
end)

-- hs.hotkey.bind(hyper, 'h', function()
--   hs.alert('Hello World')
--   hs.notify.new({title="Hammerspoon", informativeText="Hello World"}):send()
-- end)
--
-- -- hyper + shift + left move the current window to the left monitor
-- hs.hotkey.bind(hyperShift, 'left', function()
--   local w = hs.window.focusedWindow()
--   if not w then
--     return
--   end
--   local s = w:screen():toWest()
--   if s then
--     w:moveToScreen(s)
--   end
-- end)
--
-- -- hyper + shift + right move the current window to the right monitor
-- hs.hotkey.bind(hyperShift, 'right', function()
--   local w = hs.window.focusedWindow()
--   if not w then
--     return
--   end
--   local s = w:screen():toEast()
--   if s then
--     w:moveToScreen(s)
--   end
-- end)
--
--
-- hs.hotkey.bind(hyper, "right", function()
--   local win = hs.window.focusedWindow()
--   win:right()
-- end)
--
-- hs.hotkey.bind(hyper, "left", function()
--   local win = hs.window.focusedWindow()
--   win:left()
-- end)
--
-- hs.hotkey.bind(hyper, "up", function()
--   local win = hs.window.focusedWindow()
--   win:up()
-- end)
--
-- hs.hotkey.bind(hyper, "down", function()
--   local win = hs.window.focusedWindow()
--   win:down()
-- end)
--

--
--
-- -- +-----------------+
-- -- |        |        |
-- -- |        |  HERE  |
-- -- |        |        |
-- -- +-----------------+
-- function hs.window.right(win)
--     local win = hs.window.focusedWindow()
--     local f = win:frame()
--     local screen = win:screen()
--     local max = screen:frame()
--
--     f.x = max.x + (max.w / 2)
--     f.y = max.y
--     f.w = max.w / 2
--     f.h = max.h
--     win:setFrame(f)
-- end
--
-- -- +-----------------+
-- -- |        |        |
-- -- |  HERE  |        |
-- -- |        |        |
-- -- +-----------------+
-- function hs.window.left(win)
--     local win = hs.window.focusedWindow()
--     local f = win:frame()
--     local screen = win:screen()
--     local max = screen:frame()
--
--     f.x = max.x
--     f.y = max.y
--     f.w = max.w / 2
--     f.h = max.h
--     win:setFrame(f)
-- end
--
-- -- +-----------------+
-- -- |      HERE       |
-- -- +-----------------+
-- -- |                 |
-- -- +-----------------+
-- function hs.window.up(win)
--   local win = hs.window.focusedWindow()
--   local f = win:frame()
--   local screen = win:screen()
--   local max = screen:frame()
--
--   f.x = max.x
--   f.y = max.y
--   f.w = max.w
--   f.h = max.h / 2
--   win:setFrame(f)
-- end
--
-- -- +-----------------+
-- -- |                 |
-- -- +-----------------+
-- -- |      HERE       |
-- -- +-----------------+
-- function hs.window.down(win)
--   local win = hs.window.focusedWindow()
--   local f = win:frame()
--   local screen = win:screen()
--   local max = screen:frame()
--
--   f.x = max.x
--   f.y = max.y + (max.h / 2)
--   f.w = max.w
--   f.h = max.h / 2
--   win:setFrame(f)
-- end
