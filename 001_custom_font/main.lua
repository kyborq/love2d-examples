local font = nil

function love.load()
    font = love.graphics.newFont("PixelFraktur.ttf", 32)
    love.graphics.setFont(font)
end

function love.draw()
    love.graphics.print("Hello Love2D!", 100, 200)
end