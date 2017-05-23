
local hyper = {'cmd', 'alt'}
local hyperShift = {'alt', 'cmd', 'shift'}
local main_monitor = "LG ULTRAWIDE"
local second_monitor = "2340"

-- hs.window.animationDuration = 0

-- short key to luanch app
function launch_app_config()

  hs.hotkey.bind(hyper, 'i', function()
    hs.application.launchOrFocus('iTerm')
  end)

  hs.hotkey.bind(hyper, 'm', function()
    hs.application.launchOrFocus('MWeb')
  end)

  hs.hotkey.bind(hyper, 'm', function()
    hs.application.launchOrFocus('Evernote')
  end)


end

-- short key to move windows
function window_config()
  hs.hotkey.bind(hyper, 'h', function()
    hs.alert('Hello World')
    hs.notify.new({title="Hammerspoon", informativeText="Hello World"}):send()
  end)

  -- hyper + shift + left move the current window to the left monitor
  hs.hotkey.bind(hyperShift, 'left', function()
    local w = hs.window.focusedWindow()
    if not w then
      return
    end
    local s = w:screen():toWest()
    if s then
      w:moveToScreen(s)
    end
  end)

  -- hyper + shift + right move the current window to the right monitor
  hs.hotkey.bind(hyperShift, 'right', function()
    local w = hs.window.focusedWindow()
    if not w then
      return
    end
    local s = w:screen():toEast()
    if s then
      w:moveToScreen(s)
    end
  end)


  hs.hotkey.bind(hyper, "right", function()
    local win = hs.window.focusedWindow()
    win:right()
  end)

  hs.hotkey.bind(hyper, "left", function()
    local win = hs.window.focusedWindow()
    win:left()
  end)

  hs.hotkey.bind(hyper, "up", function()
    local win = hs.window.focusedWindow()
    win:up()
  end)

  hs.hotkey.bind(hyper, "down", function()
    local win = hs.window.focusedWindow()
    win:down()
  end)

  hs.hotkey.bind(hyper, "f", function()
    local win = hs.window.focusedWindow()
    win:maximize()
  end)

  hs.hotkey.bind(hyper, "c", function()
    local win = hs.window.focusedWindow()
    win:fullscreenAlmostCenter()
  end)

  hs.hotkey.bind(hyper, 'r', function()
    hs.reload()
  end)

end

--------------------------------------------------------------------------------
-- METHODS - BECAREFUL :)
--------------------------------------------------------------------------------


-- +-----------------+
-- |        |        |
-- |        |  HERE  |
-- |        |        |
-- +-----------------+
function hs.window.right(win)
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 2)
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h
    win:setFrame(f)
end

-- +-----------------+
-- |        |        |
-- |  HERE  |        |
-- |        |        |
-- +-----------------+
function hs.window.left(win)
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h
    win:setFrame(f)
end

-- +-----------------+
-- |      HERE       |
-- +-----------------+
-- |                 |
-- +-----------------+
function hs.window.up(win)
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h / 2
  win:setFrame(f)
end

-- +-----------------+
-- |                 |
-- +-----------------+
-- |      HERE       |
-- +-----------------+
function hs.window.down(win)
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y + (max.h / 2)
  f.w = max.w
  f.h = max.h / 2
  win:setFrame(f)
end


-- +------------------+
-- |                  |
-- |  +------------+  +--> minY
-- |  |    HERE    |  |
-- |  +------------+  |
-- |                  |
-- +------------------+
function hs.window.fullscreenAlmostCenter(win)
  local offsetW = hs.screen.minX(win:screen()) - hs.screen.almostMinX(win:screen())
  win:setFrame({
    x = hs.screen.almostMinX(win:screen()),
    y = hs.screen.minY(win:screen()),
    w = hs.screen.minWidth(isFullscreen) + (2 * offsetW),
    h = hs.screen.minHeight(isFullscreen)
  })
end


windowWatcher = {}

function windowWatcherListener(element, event, watcher, userData)
  local appName = userData.name
  local app = hs.application.find(appName)
  if (app) then
    -- applyLayout(layouts, app)
  end
end

function applicationWatcher(appName, eventType, appObject)
  if (eventType == hs.application.watcher.activated) then
    if (appName == "iTerm") then
      appObject:selectMenuItem({"Window", "Bring All to Front"})
    elseif (appName == "Finder") then
      appObject:selectMenuItem({"Window", "Bring All to Front"})
    end
    --
  end

  if (eventType == hs.application.watcher.launched) then
    os.execute("sleep " .. tonumber(1))
    -- applyLayout(layouts, appObject)

    -- for i, aname in ipairs(newWindowWatcher) do
    --   if (appName == aname) then
    --     if (not windowWatcher[aname]) then
    --       hs.alert.show("Watching " .. appName)
    --       windowWatcher[aname] = appObject:newWatcher(windowWatcherListener, { name = appName })
    --       windowWatcher[aname]:start({hs.uielement.watcher.windowCreated})
    --     end
    --   end
    -- end
  end

  if (eventType == hs.application.watcher.terminated) then
    for i, aname in ipairs(newWindowWatcher) do
      if (appName == aname) then
        if (windowWatcher[aname]) then
          hs.alert.show("Stop watching " .. appName)
          windowWatcher[aname]:stop()
          windowWatcher[aname] = nil
        end
      end
    end
  end
end

-- hs.layout.apply(windowLayout)

launch_app_config()
window_config()

local mylayout= {
  {"Finder",  nil,  second_monitor, hs.layout.left50, nil, nil},
  {"Mail",    nil,  second_monitor, hs.layout.right50,   nil, nil},
}

hs.hotkey.bind(hyper, '1', function() hs.layout.apply(mylayout) end)
appWatcher = hs.application.watcher.new(applicationWatcher)
appWatcher:start()
