local Button = require("demo/lua/button")

local Menu = {}
Menu.__index = Menu

function Menu.new()
    local menu = {}
    setmetatable(menu, Menu)
    menu.buttons = {}
    return menu
end

function Menu:addButton(x, y, width, height, text, callback)
    local button = Button.new(x, y, width, height, text)
    table.insert(self.buttons, {button = button, callback = callback})
end

function Menu:update()
    local mx, my = love.mouse.getPosition()
    for _, btn in ipairs(self.buttons) do
        btn.button:update(mx, my)
    end
end

function Menu:draw()
    for _, btn in ipairs(self.buttons) do
        btn.button:draw()
    end
end

function Menu:mousepressed(x, y, button)
    for _, btn in ipairs(self.buttons) do
        if btn.button:mousepressed(x, y, button) then
            btn.callback()
        end
    end
end

return Menu