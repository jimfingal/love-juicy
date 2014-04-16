function love.conf(t)
    t.title = "Juicy Breakout, Love Edition"
    t.author = "Jim Fingal"
    t.url = nil
    t.identity = nil
    t.version = "0.9.1"
    t.console = false
    t.release = false
    t.window.width = 800
    t.window.height = 600
    t.window.fullscreen = false
    t.window.vsync = true
    t.window.fsaa = 0
    t.modules.joystick = false
    t.modules.audio = true
    t.modules.keyboard = true
    t.modules.event = true
    t.modules.image = true
    t.modules.graphics = true
    t.modules.timer = true
    t.modules.mouse = false
    t.modules.sound = true
    t.modules.physics = false
end
