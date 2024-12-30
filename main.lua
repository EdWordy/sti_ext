-----------
-- STI_EXT
-----------
-- v1.3.0
-- demo
-----------

-- includes
local sti  = require "sti"

-- setup local vars
local maps, map, world, tx, ty
local DEBUG



-- define maps
maps = {
	"demo/collection.lua",		-- 1
	"demo/ortho.lua",			-- 2
	"demo/ortho-inf.lua",		-- 3
	"demo/stag.lua",			-- 4
	"demo/hex.lua",			-- 5 
	"demo/objects.lua"			-- 6
}

function love.load()
	if DEBUG then
		t.console = true
	end

	-- load map
	map = sti(maps[4], { "box2d" })

	-- Print versions
	print("STI: " .. sti._VERSION)
	print("Map: " .. map.tiledversion)

	-- Prepare translations
	tx, ty = 0, 0

	-- Prepare physics world
	love.physics.setMeter(32)
	world = love.physics.newWorld(0, 0)
	map:box2d_init(world)
end

function love.update(dt)
	-- test 1: setup
	local mx,my = love.mouse.getPosition()
    tx,ty = map:convertPixelToTile(mx,my)

	-- test 2a: remove tile
    if(love.mouse.isDown(1)) then
		print("mouseX: " .. mx, "mouseY: " .. my)
		print("tileX: " .. tx,"tileY: " .. ty)
        map:setLayerTile(1, tx, ty, 0)
    end
	-- test 2b: print tile coords
	if(love.mouse.isDown(2)) then
		local px, py = map:convertTileToPixel(tx, ty)
		print("pixelX: " .. px, "pixelY: " .. py)
		map:setLayerTile(1, tx, ty, 3)
    end
end

function love.draw()
	-- Draw the map and all objects within
	love.graphics.setColor(1, 1, 1)
	map:draw()

	-- Draw Collision Map (useful for debugging)
	--love.graphics.setColor(1, 0, 0)
	--map:box2d_draw()

	-- Please note that map:draw, map:box2d_draw, and map:bump_draw take
	-- translate and scale arguments (tx, ty, sx, sy) for when you want to
	-- grow, shrink, or reposition your map on screen
end

function love.resize(w, h)
	map:resize(w, h)
end
