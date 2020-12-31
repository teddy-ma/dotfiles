function focus_other_screen() -- focuses the other screen
   local current_screen = hs.mouse.getCurrentScreen()
   local nextScreen = current_screen:next()
   local rect = nextScreen:fullFrame()
   local center = hs.geometry.rectMidPoint(rect)
   hs.mouse.setAbsolutePosition(center)
   return nextScreen
end

function get_window_under_mouse() -- from https://gist.github.com/kizzx2/e542fa74b80b7563045a
   local my_pos = hs.geometry.new(hs.mouse.getAbsolutePosition())
   local my_screen = hs.mouse.getCurrentScreen()
   return hs.fnutils.find(hs.window.orderedWindows(), function(w)
                             return my_screen == w:screen() and my_pos:inside(w:frame())
   end)
end

function activate_other_screen()
   local next_screen = focus_other_screen()
   local win = get_window_under_mouse()
   win:focus()
   redrawBorder()
end

hs.hotkey.bind(hyper, 'o', function()
                  activate_other_screen()
end)

function redrawBorder()
   win = hs.window.focusedWindow()
   if not win then
      return
   end
   top_left = win:topLeft()
   size = win:size()
   if global_border ~= nil then global_border:delete() end
   global_border = hs.drawing.rectangle(hs.geometry.rect(top_left['x'], top_left['y'], size['w'], size['h']))
   global_border:setStrokeColor({ ["red"] = 1, ["blue"] = 0, ["green"] = 0, ["alpha"] = 0.8 })
   global_border:setFill(false)
   global_border:setStrokeWidth(8)
   global_border:show()
   hs.timer.doAfter(1, function() global_border:hide() end)
end

function mouseHighlight()
   -- Delete an existing highlight if it exists
   if mouseCircle then
      mouseCircle:delete()
      if mouseCircleTimer then
         mouseCircleTimer:stop()
      end
   end
   -- Get the current co-ordinates of the mouse pointer
   mousepoint = hs.mouse.getAbsolutePosition()
   hs.alert.show(mousepoint)
   -- Prepare a big red circle around the mouse pointer
   mouseCircle = hs.drawing.circle(hs.geometry.rect(mousepoint.x-40, mousepoint.y-40, 80, 80))
   mouseCircle:setStrokeColor({ ["red"] = 1, ["blue"] = 0, ["green"] = 0, ["alpha"] = 1 })
   mouseCircle:setFill(false)
   mouseCircle:setStrokeWidth(5)
   mouseCircle:show()

   -- Set a timer to delete the circle after 3 seconds
   mouseCircleTimer = hs.timer.doAfter(3, function() mouseCircle:delete() end)
end
