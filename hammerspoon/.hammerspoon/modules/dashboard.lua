hs.hotkey.bind(hyper, 'y', function()
    if dashboard_draw then
        dashboard_draw:delete()
        dashboard_draw = nil
        return
     end

    local command = "uptime"
    local handle = io.popen(command)
    local result = handle:read("*a")
    -- hs.alert.show(result, 99999)
    handle:close()
    generate_view()
    local webcontent = html_dashboard(result)
    dashboardView:html(webcontent)
    dashboardView:show()
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

function render_dashboard(content)
    local mainRes = hs.mouse.getCurrentScreen():fullFrame() -- e.g w:1920 h:1080
    local font_size = 40
    local styledString = hs.styledtext.new(
        content,
        {
            font = { name = "Fira Mono", size = font_size },
            color = hs.drawing.color.hammerspoon.osx_green, --hs.drawing.color.x11.silver,
            paragraphStyle = { alignment = "center" }
        }
    )
    -- hs.alert.show(styledString)
    local w = 500
    local h = 500
    local x = 500
    local y = 500
    local dashboardFrame = hs.geometry.rect(x, y, w, h)
    -- hs.alert.show(keyFrame)

    dashboard_draw = hs.drawing.text(dashboardFrame, hs.styledtext.new(
        content,
        {
            font = { name = "Fira Mono", size = font_size },
            color = hs.drawing.color.hammerspoon.osx_green, --hs.drawing.color.x11.silver,
            paragraphStyle = { alignment = "center" }
        }
    ))
    dashboard_draw:show()

    -- key_draw:setLevel(hs.drawing.windowLevels.overlay)
end
