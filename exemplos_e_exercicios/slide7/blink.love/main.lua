function love.load()
    canBlink = true 

    red = {1, 0, 0}
    yellow = {1, 1, 0}
    color = red

    time_counter = 0

    font = love.graphics.newFont(50)
    love.graphics.setFont(font)
end

function love.mousepressed()
    canBlink = false
end

function love.update(dt)
    if (canBlink) then
        time_counter = time_counter + dt
        if time_counter > 1 then
            if color == red then
                color = yellow
            else
                color = red
            end
            time_counter = 0
        end
    end
end

function love.draw()
    
    love.graphics.setColor(1,1,1)
    if (canBlink) then
        love.graphics.print("canBlink = true")
    else
        love.graphics.print("canBlink = false")
    end

    love.graphics.setColor(color)
    love.graphics.rectangle('fill',200,200,20,20)
end
