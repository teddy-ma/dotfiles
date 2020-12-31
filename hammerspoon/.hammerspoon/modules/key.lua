function showKeyPress(tap_event)
   local duration = 1.5  -- popup duration
   local modifiers = ""  -- key modifiers string representation
   local flags = tap_event:getFlags()
   local character = hs.keycodes.map[tap_event:getKeyCode()]
   -- we only want to read special characters via getKeyCode, so we
   -- use this subset of hs.keycodes.map
   local special_chars = {
      ["f1"] = true, ["f2"] = true, ["f3"] = true, ["f4"] = true,
      ["f5"] = true, ["f6"] = true, ["f7"] = true, ["f8"] = true,
      ["f9"] = true, ["f10"] = true, ["f11"] = true, ["f12"] = true,
      ["f13"] = true, ["f14"] = true, ["f15"] = true, ["f16"] = true,
      ["f17"] = true, ["f18"] = true, ["f19"] = true, ["f20"] = true,
      ["pad"] = true, ["pad*"] = true, ["pad+"] = true, ["pad/"] = true,
      ["pad-"] = true, ["pad="] = true, ["pad0"] = true, ["pad1"] = true,
      ["pad2"] = true, ["pad3"] = true, ["pad4"] = true, ["pad5"] = true,
      ["pad6"] = true, ["pad7"] = true, ["pad8"] = true, ["pad9"] = true,
      ["padclear"] = true, ["padenter"] = true, ["return"] = true,
      ["tab"] = true, ["space"] = true, ["delete"] = true, ["escape"] = true,
      ["help"] = true, ["home"] = true, ["pageup"] = true,
      ["forwarddelete"] = true, ["end"] = true, ["pagedown"] = true,
      ["left"] = true, ["right"] = true, ["down"] = true, ["up"] = true
   }

   -- if we have a simple character (no modifiers), we want a shorter
   -- popup duration.
   if (not flags.shift and not flags.cmd and
       not flags.alt and not flags.ctrl) then
      duration = 0.3
   end

   -- we want to get regular characters via getCharacters as it
   -- "cleans" the key for us (e.g. for a "⇧-5" keypress we want
   -- to show "⇧-%").
   if special_chars[character] == nil then
      character = tap_event:getCharacters(true)
      if flags.shift then
         character = string.lower(character)
      end
   end

   -- make some known special characters look good
   if character == "return" then
      character = "⏎"
   elseif character == "delete" then
      character = "⌫"
   elseif character == "escape" then
      character = "⎋"
   elseif character == "space" then
      character = "SPC"
   elseif character == "up" then
      character = "↑"
   elseif character == "down" then
      character = "↓"
   elseif character == "left" then
      character = "←"
   elseif character == "right" then
      character = "→"
   end

   -- get modifiers' string representation
   if flags.ctrl then
      modifiers = modifiers .. "C-"
   end
   if flags.cmd then
      modifiers = modifiers .. "⌘-"
   end
   if flags.shift then
      modifiers = modifiers .. "⇧-"
   end
   if flags.alt then
      modifiers = modifiers .. "⌥-"
   end

   result = modifiers .. character
   presenter(result)
end

function presenter(string)
   build_exist_key_string(string)

   if not key_draw then  -- key_draw is nil shoud create new one
      print('create key draw')
      create_draw(exist_key_string)
      key_draw:show()
      reset_key_display_timer()
   else
      print('rebuild key draw')
      destroy_draw(key_draw)
      create_draw(exist_key_string)
      key_draw:show()
      reset_key_display_timer()
   end
end

function build_exist_key_string(string)
   max_display_key_command_length = 2
   if not key_array then
      key_array = {}
   else
      if #key_array > max_display_key_command_length then
         table.remove(key_array, 1)
      end
   end
   key_array[#key_array + 1] = string
   exist_key_string = table.concat(key_array, ' ')
end

function reset_key_display_timer()
   if key_display_timer then
      key_display_timer:stop()
   end
   key_display_timer = hs.timer.doAfter(2, function() destroy_draw(key_draw) exist_key_string = nil end)
end

function create_draw(string)
   local mainRes = hs.screen.mainScreen():fullFrame()
   local styledString = hs.styledtext.new(string,{font={name="Impact",size=120},color=red, paragraphStyle={alignment="center"}})
   local timeframe = hs.geometry.rect((mainRes.w-300)/2,(mainRes.h-200)/2,1000,150)
   key_draw = hs.drawing.text(timeframe,styledString)
   key_draw:setLevel(hs.drawing.windowLevels.overlay)
end

function destroy_draw(draw)
   if draw then
      key_draw:delete()
      key_draw = nil
   end
end

function get_todo_draw_instance(string)
   local mainScreen = hs.screen.mainScreen()
   local mainRes = mainScreen:fullFrame()
   local todo_str = string
   local todo = hs.styledtext.new(todo_str,{font={name="Impact",size=120},color=red, paragraphStyle={alignment="center"}})
   local timeframe = hs.geometry.rect((mainRes.w-300)/2,(mainRes.h-200)/2,900,150)
   local todo_draw = hs.drawing.text(timeframe,todo)
   todo_draw:setLevel(hs.drawing.windowLevels.overlay)
   return todo_draw
end

local key_tap = hs.eventtap.new(
   {hs.eventtap.event.types.keyDown},
   showKeyPress
)

-- Enable/Disable Keypress Show Mode with "C-⌘-⇧-p"
k = hs.hotkey.modal.new(hyper, 'P')
function k:entered()
   hs.alert.show("Enabling Keypress Show Mode", 1.5)
   key_tap:start()
end
function k:exited()
   hs.alert.show("Disabling Keypress Show Mode", 1.5)
end
k:bind(hyper, 'P', function()
          key_tap:stop()
          k:exit()
end)

hs.hotkey.bind(hyper, 'y', function()
                  presenter(math.randomseed(os.time()))
end)
