hs.hotkey.bind(hyper, 'y', function()
                  if not dashboardView then
                     local command = "uptime"
                     local handle = io.popen(command)
                     local result = handle:read("*a")
                     handle:close()
                     generate_view()
                     local webcontent = html_dashboard(result)
                     dashboardView:html(webcontent)
                     dashboardView:show()
                  else
                     dashboardView:delete()
                     dashboardView:hide()
                     dashboardView = nil
                  end
end)

function generate_view()
   local cscreen = hs.screen.mainScreen()
   local cres = cscreen:fullFrame()

   dashboardView = hs.webview.new({x=0, y=0, w=0, h=0})
   dashboardView:windowTitle("Dashboard")
   dashboardView:windowStyle("utility")
   dashboardView:allowGestures(true)
   dashboardView:allowNewWindows(false)
   dashboardView:level(hs.drawing.windowLevels.modalPanel)
   dashboardView:frame({
         x = cres.x + cres.w * 0.15 / 2,
         y = cres.y + cres.h * 0.25 / 2,
         w = cres.w * 0.85,
         h = cres.h * 0.75
   })
end

function html_dashboard(content)
   local html = [[
        <!DOCTYPE html>
        <html>
        <head>
        <body>
        <h1>hello</h1>
        <div class="title"><strong>]] .. content .. [[</strong></div>

        </body>
        </html>
        ]]

        return html
end
