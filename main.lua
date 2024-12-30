------------
-- STI_EXT
------------
-- v1.3.0.3
-- demo
------------

-- includes
local sti  = require "sti"
local menu = require "demo.lua.menu"

-- setup local vars
local map, world, tx, ty, font, mainMenu
-- setup state
local GAMESTATE = "main_menu"

-- define maps
local maps = {
	"demo/ortho.lua",			-- 1
	"demo/ortho-inf.lua",		-- 2
	'demo/iso.lua',				-- 3
	"demo/stag.lua",			-- 4
	"demo/hex.lua",				-- 5 
}

function love.load()
	-- intitialize
	if sti then
		print("Loading STI...")
		print("STI version: " .. sti._VERSION)
	end

	-- load font
	font = love.graphics.newFont("demo/fonts/Robtronika_bit.ttf", 24)

	-- setup main menu
	mainMenu = menu.new()

	-- setup main menu vars
	local centerX = love.graphics.getWidth() / 2
	local buttonSizeX = 160
	local buttonSizeY = 40

	-- build the menu
    mainMenu:addButton(centerX - (buttonSizeX / 2), 150, buttonSizeX, buttonSizeY, "Map 1 (ortho)", function()
		print("Loading map...")
		map = sti(maps[1], { "box2d" })
		GAMESTATE = "play"
    end)
    mainMenu:addButton(centerX - (buttonSizeX / 2), 200, buttonSizeX, buttonSizeY, "Map 2 (ortho infinite)", function()
		print("Loading map...")
		map = sti(maps[2], { "box2d" })
		GAMESTATE = "play"
    end)
	mainMenu:addButton(centerX - (buttonSizeX / 2), 250, buttonSizeX, buttonSizeY, "Map 3 (regular iso)", function()
		print("Loading map...")
		map = sti(maps[3], { "box2d" })
		GAMESTATE = "play"
    end)
	mainMenu:addButton(centerX - (buttonSizeX / 2), 300, buttonSizeX, buttonSizeY, "Map 4 (staggered iso)", function()
		print("Loading map...")
		map = sti(maps[4], { "box2d" })
		GAMESTATE = "play"
    end)
	mainMenu:addButton(centerX - (buttonSizeX / 2), 350, buttonSizeX, buttonSizeY, "Map 5 (hexagonal)", function()
		print("Loading map...")
		map = sti(maps[5], { "box2d" })
		GAMESTATE = "play"
    end)

	-- Prepare translations
	tx, ty = 0, 0
end

function love.update(dt)
	-- core game loop [update]
	if GAMESTATE == "main_menu" then
		-- update main menu
		mainMenu:update()

		-- nil check the map
		if map ~= nil then
			print("Tiled version: " .. map.tiledversion)

			-- Prepare physics world
			love.physics.setMeter(32)
			world = love.physics.newWorld(0, 0)
			map:box2d_init(world)			
		end
	elseif GAMESTATE == "play" then
		-- test 1: setup
		local mx, my = love.mouse.getPosition()
		tx, ty = map:convertPixelToTile(mx, my)

		-- test 2a: remove tile
		if(love.mouse.isDown(1)) then
			print("mouseX: " .. mx, "mouseY: " .. my)
			print("tileX: " .. tx,"tileY: " .. ty)
			map:setLayerTile(1, tx, ty, 0)
		end
		-- test 2b: set tile
		if(love.mouse.isDown(2)) then
			local px, py = map:convertTileToPixel(tx, ty)
			print("pixelX: " .. px, "pixelY: " .. py)
			map:setLayerTile(1, tx, ty, 3)
		end
	else
		print("ERROR: no GAMESTATE!")
	end
end

function love.draw()
	-- core game loop [draw]
	if GAMESTATE == "main_menu" then
		-- draw menu bg
		love.graphics.setColor(0.5, 0.5, 0.5)
		love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())

		local titleText = love.graphics.newText(font, "Maps")
		love.graphics.setColor(1, 1, 1)
		love.graphics.draw(titleText, love.graphics.getWidth()/2 - 45, 120)
		
		-- draw buttons 
		mainMenu:draw()

	elseif GAMESTATE == "play" then
		-- Draw the map and all objects within
		love.graphics.setColor(1, 1, 1)
		map:draw()

		-- Please note that map:draw, map:box2d_draw, and map:bump_draw take
		-- translate and scale arguments (tx, ty, sx, sy) for when you want to
		-- grow, shrink, or reposition your map on screen

		-- Draw Collision Map (useful for debugging)
		-- CURRENTLY BORKEN??????????
		--love.graphics.setColor(1, 0, 0)
		--map:box2d_draw()
	end
end

function love.mousepressed(x, y, button)
	-- core game loop [mouse]
	if GAMESTATE == "main_menu" then
		-- main menu controls
    	mainMenu:mousepressed(x, y, button)
	elseif GAMESTATE == "play" then
		-- play controls
	end
end

function love.resize(w, h)
	-- core game loop [resize]
	if GAMESTATE == "main_menu" then
	elseif GAMESTATE == "play" then
		map:resize(w, h)
	end
end