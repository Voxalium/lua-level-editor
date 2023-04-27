WinWidth = 800
WinHeight = 600

function love.load()
    love.window.setMode(WinWidth, WinHeight)
end

function love.draw()
    DrawMenuBar()
    DrawMenuElements("File", 0, 3)
    DrawMenuElements("Edit", Button.w, 3)
    DrawMenuElements("Options", Button.w * 2, 3)
end

function love.update()
    
end

function DrawMenuElements(txt,x,y)
    love.graphics.setColor(255,255,255)
    love.graphics.rectangle("fill",x, 0, Button.w, Button.h)
    love.graphics.setColor(0,0,0)
    love.graphics.print(txt, x + 2, y)
end

function DrawMenuBar()
    love.graphics.setColor(255,0,0)
    love.graphics.rectangle("fill", 0, 0, WinWidth, 20)
end

Button = {
    w = 50,
    h = 20
}