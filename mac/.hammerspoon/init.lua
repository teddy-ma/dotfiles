
require "modules/config"
require "modules/app"
require "modules/window"
require "modules/layout"

hs.hotkey.bind(hyper, 'r', function()
  hs.reload()
end)


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
    elseif (appName == "Google Chrome") then
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


appWatcher = hs.application.watcher.new(applicationWatcher)
appWatcher:start()
