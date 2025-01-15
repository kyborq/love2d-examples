local cursor = nil
local x, y = 0, 0

function love.load()
    love.mouse.setVisible(false)
    cursor = love.graphics.newImage("cursor.png")
end

function love.update(dt)
    x, y = love.mouse.getPosition()
end

function love.draw()
    love.graphics.draw(cursor, x, y)
end