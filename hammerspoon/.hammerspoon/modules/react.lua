function applicationWatcher(appName, eventType, appObject)
  if (eventType == hs.application.watcher.activated) then
    if (appName == "Terminal") then
      appObject:selectMenuItem({"Window", "Bring All to Front"})
    elseif (appName == "Finder") then
      appObject:selectMenuItem({"Window", "Bring All to Front"})
    elseif (appName == "Google Chrome") then
      appObject:selectMenuItem({"Window", "Bring All to Front"})
    end
  end
end

appWatcher = hs.application.watcher.new(applicationWatcher)
appWatcher:start()

caffeine = hs.menubar.new()
function setCaffeineDisplay(state)
   if state then
      caffeine:setTitle("AWAKE")
   else
      caffeine:setTitle("SLEEPY")
   end
end

function caffeineClicked()
   setCaffeineDisplay(hs.caffeinate.toggle("displayIdle"))
end

if caffeine then
   caffeine:setClickCallback(caffeineClicked)
   setCaffeineDisplay(hs.caffeinate.get("displayIdle"))
end
