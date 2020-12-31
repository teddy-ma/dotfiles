hs.hotkey.bind(hyper, 'i', function()
                  hs.application.launchOrFocus('Terminal')
end)

hs.hotkey.bind(hyper, 'f', function()
                  hs.application.launchOrFocus('Finder')
end)

hs.hotkey.bind(hyper, 's', function()
                  hs.application.launchOrFocus('Slack')
end)

hs.hotkey.bind(hyper, 'e', function()
                  hs.application.launchOrFocus('Emacs')
end)

hs.hotkey.bind(hyper, 't', function()
                  spoon.AClock:toggleShow()
end)
