function applicationWatcher(appName, eventType, appObject)
  if (eventType == hs.application.watcher.activated) then
    if (appName == "iTerm") then
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
