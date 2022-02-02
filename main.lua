--[[
Пример использования преобразований поворота и вращения.
--]]

local angle = 0.

love.draw = function()
    --local x, y = love.graphics.getDimensions()
    --x, y = x / 2, y / 2
    local x, y = 300, 100

    local rad = 10
    local width, height = 128, 128

    love.graphics.push()

    love.graphics.setColor {0, 0.5, 1, 1}

    -- Порядок применения трансформаций

    --love.graphics.translate(x + width / 2, y + height / 2)
    --love.graphics.rotate(angle)
    --love.graphics.translate(-width / 2, -height / 2)

    love.graphics.translate(x, y)
    love.graphics.rotate(angle)
    love.graphics.translate(-width / 2, -height / 2)


    love.graphics.rectangle('fill', 0, 0, width, height)

    love.graphics.pop()

    love.graphics.setColor {1, 0.5, 1, 1}
    love.graphics.circle('fill', x, y, rad)

end

love.update = function()
    angle = love.timer.getTime()
    local isDown = love.keyboard.isDown
    if isDown('escape') then
        love.event.quit()
    elseif isDown('left') then
        angle = angle + 0.1
    elseif isDown('right') then
        angle = angle - 0.1
    end
    --angle = math.sin(love.timer.getTime())
end
