local Button = {}
Button.__index = Button

function Button.new(x, y, width, height, text)
    local button = {}
    setmetatable(button, Button)
    
    button.x = x
    button.y = y
    button.width = width
    button.height = height
    button.text = text
    button.isHovered = false
    
    return button
end

function Button:update(mx, my)
    self.isHovered = mx > self.x and mx < self.x + self.width and
                     my > self.y and my < self.y + self.height
end

function Button:draw()
    -- Draw background
    love.graphics.setColor(self.isHovered and {0.8,0.8,0.8} or {0.7,0.7,0.7})
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
    
    -- Draw text
    love.graphics.setColor(0,0,0)
    love.graphics.printf(self.text, self.x, self.y + self.height/3, 
                        self.width, "center")
end

function Button:mousepressed(x, y, button)
    if self.isHovered and button == 1 then
        -- Handle click
        return true
    end
    return false
end

return Button