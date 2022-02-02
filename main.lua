--[[
Пример использования преобразований поворота и вращения.
--]]

local angle = 0.

love.draw = function()
    local x, y = 500, 500
    local rad = 70
    local width, height = 128, 128

    love.graphics.circle('fill', x, y, rad)
    love.graphics.setColor {0, 0.5, 1, 1}
    love.graphics.push()
    love.graphics.translate(x + width / 2, y + height / 2)
    love.graphics.rotate(angle)
    love.graphics.rectangle('fill', 0, 0, width, height)
    love.graphics.pop()
end

love.update = function()
    local isDown = love.keyboard.isDown
    if isDown('escape') then
        love.event.quit()
    elseif isDown('left') then
        angle = angle + 0.1
    elseif isDown('right') then
        angle = angle - 0.1
    end
end
