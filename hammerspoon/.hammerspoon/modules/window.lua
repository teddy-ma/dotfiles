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

-- hs.hotkey.bind(hyper, "m", function()
--   local win = hs.window.focusedWindow()
--   win:maximize()
-- end)
