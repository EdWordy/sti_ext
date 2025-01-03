# Change Log

## todo list

* 1] continue to check each map rendering mode for correctness (mostly the convertPixelToTile func being a nuisance)
*	1a] Orthogonal 				-- todo
*	1b] Isometric			  	-- todo
*   1c] Isometric (Staggered)	-- done
*	1d] Hexagonal 				-- done
* 2] fix buggy physics module (seems to not work when enabled/bugs out) -- todo
* 3] rewrite staggered tile to pixel func (math is sometimes wonky) -- todo

## 2024-12-30: v1.3.0.3

* Added: clarified todo list and added status indicators

* Changed: `button.lua` code to be more modular and configurable with color settings

* Fixed: title menu text rendering bug

* Removed: old `tmx` files were thrown out and new files were moved to a new repo (to `sti_ext_extra`)

## 2024-12-30: v1.3.0.2

* Fixed: hexagonal mode for `convertPixelToTile(x, y)` now works as intended
* Fixed: hexagonal mode for `convertTileToPixel(x, y)` now works as intended

## 2024-12-30: v1.3.0.1

* Added: new tileset images include `demo\images\C_32_Ortho-Tile_1.png` and `demo\images\C_32_Hex-Tile_1.png`
* Added: new menu font Robtronika  (`demo\fonts\Robtronika_bit.ttf`)
* Added: new demo modules menu (`demo/lua/menu.lua`) and button (`demo/lua/button.lua`) for usage in the main demo

* Changed: removed a few test maps: `collections.lua` and `objects.lua`
* Changed: remade the test map suite (all maps) with new tiles

## 2024-12-30: v1.3.0.0

* Added: new tileset images include `demo/images/BW_32_Iso-Tile.png` and `demo/images/BW_32x16_Iso_Tiles.png`
* Added: new `conf.lua` file with all modules enabled

* Changed: naming of 'tests' folder -> 'demo' folder
* Changed: altered a few paths `in map_spec.lua` to adhere to the new name
* Changed: cleaned up `main.lua` 

* Fixed: staggered mode for `convertPixelToTile(x, y)` now works properly
* Fixed: staggered mode for `convertTileToPixel(x, y)` now works (mostly) properly

## 2019-03-24: v1.2.3.0

* Added: support for changing layer tiles at runtime (thanks @IoriBranford)
* Added: object's name and type now exposed to bump world (thanks @npinochet)
* Added: support for LOVE 11.0 (thanks @tyraindreams, @Krankdud, @AndrewRublyov)
* Added: support for Box2D dynamic bodies via "dynamic" property (thanks @lemilonkh)
* Added: tutorial formerly hosted by lua.space to /tutorials
* Added: support for restitution, friction, and filter properties to Box2D plugin (thanks @DrJamgo)
* Added: support for infinite maps
* Added: support for layer groups (thanks @daxartio)
* Added: support for point objects
* Changed: loading a map now asserts (thanks @Alloyed)
* Fixed: error when translate coords are nil in Map.draw (thanks @camchenry)
* Fixed: create new tile instance list if one doesn't exist (thanks @IoriBranford)
* Fixed: error when translate coords are nil in box2d_draw (thanks @DanielPower)
* Fixed: incorrect Y offset when tile height is different than map's tileheight (thanks @IoriBranford)
* Fixed: tile objects now scale correctly (thanks @Jules5)
* Fixed: tile object transform issues (thanks @DavidJTFerguson37)
* Fixed: clobbering directory structure if several levels deep (thanks @meeces2911)
* Fixed: rotate_vertex was not compensating for height offset (thanks @Schwusch)

## 2017-05-18: v0.18.2.1

* Changed: map.draw, map.box2d_draw, and map.bump_draw now take transform arguments. This (finally!) allows both scaling and translating to work together.
* Fixed: A bug where cached textures were not able to be loaded more than once (thanks @IoriBranford)

## 2017-05-07: v0.18.2.0

* Added: dummy graphics shim for headless mode (thanks @matiasah)
* Changed: plugins now load using require() (thanks @benwebber)
* Fixed: typo causing staggered maps to crash (thanks @Drauthius)
* Fixed: a bug where scaling the map could cause graphical glitches
* Fixed: transparent colour code

## 2017-02-01: v0.18.1.0

* Added: support for sorting objects
* Changed: box2d and bump plugins to be explicit when dealing with object groups within tiles
* Fixed: rendering staggered and hexogonal maps
* Removed: Map.drawRange was made obselete

## 2017-02-01: v0.16.0.4

* Added: support for passing map table in directly (thanks @prust)
* Added: support for collision object groups in bump.lua plugin (thanks @DanielPower)
* Added: support for transparent colour mask (thanks @matiasah)
* Changed: batch size limit from 100 to default(1000)
* Changed: drawing layers now inherits colour settings (thanks @josefnpat)
* Fixed: a leaking global

## 2016-08-22: v0.16.0.3

* Changed: box2d_draw plugin now uses correct shape (thanks @buckle2000)
* Fixed: a collision offset issue in bump_draw (thanks @rosshadden)
* Fixed: a bug where drawing multiple maps didn't always work properly

## 2016-07-18: v0.16.0.2

* Added: busted tests!
* Changed: structure of git repo is now more user friendly
* Changed: converted map.lua into init.lua and changed isolation code
* Changed: STI.new() -> STI()
* Changed: Map:convertWorldToScreen -> Map:convertTileToPixel
* Changed: Map:convertScreenToWorld -> Map:convertPixelToTile
* Fixed: hexagonal maps now display in correct location (thanks @bjorn)

## 2016-06-09: v0.16.0.1

* Changed: moved local functions to an internal utils file to tidy things up
* Changed: Box2D plugin now uses utils file instead of duplicate functions

## 2016-06-09: v0.16.0.0

* Changed: Custom Properties now support proper boolean values in both Box2D and Bump plugins

## 2016-06-09: v0.14.2.0

* Added: proper support for Layer offsets (thanks @Drauthius!)

## 2016-05-19: v0.14.1.13

* Added: test maps for visual varification between Tiled and STI
* Added: Map:swapTile so you can cleanly swap tiles in Tile Layers
* Changed: all conversion functions consolidated into two functions (thanks @entrancejew)
* Fixed: shapes were off in noman's land in some cases (thanks @loribranford)

## 2016-01-12: v0.14.1.12

* Added: basic support for object layers in Bump plugin (thanks @premek)
* Changed: new line token from CRLF to LF
* Fixed: sprite batches should now respect the map draw order

## 2016-01-01: v0.14.1.11

* Fixed: various bugs in the Box2D plugin (thanks @ChrisWeisiger)
* Fixed: various bugs in the Bump plugin (thanks @bobbyjoness)

## 2015-12-31: v0.14.1.10

* Fixed: Box2D plugin was not recognizing a tile's embedded object group

## 2015-11-19: v0.14.1.9

* Changed: key in image cache to formatted path of image

## 2015-11-16: v0.14.1.8

* Added: image cache to STI module [sponsored by Binary Cocoa]
* Added: STI:flush() to clear out image cache

## 2015-11-15: v0.14.1.7

* Added: support for offsetting maps [sponsored by Binary Cocoa]
* Changed: Map.setDrawRange is more optimized via recycling tables
* Changed: render order now defaults to "right-down"

## 2015-11-07: v0.14.1.6

* Fixed: tileset images not being properly filtered
* Fixed: bump.lua plugin missing world argument in draw

## 2015-10-14: v0.14.1.5

* Added: bump.lua plugin (thanks @bobbyjoness)

## 2015-10-12: v0.14.1.4

* Fixed: removing a layer now properly removes tile and object instances
* Fixed: box2d plugin now properly removes collision objects

## 2015-10-09: v0.14.1.3

* Fixed: flipping animated tiles properly display
* Fixed: rotating animated tiles properly display
* Fixed: rotating tile objects properly display
* Fixed: box2d plugin properly creates rotated and flipped tile objects
* Fixed: box2d plugin no longer crashes when drawing a line with two vertices

## 2015-10-07: v0.14.1.2

* Added: support for all render orders (rd, ru, ld, lu)
* Added: support for sensors in the box2d plugin (only works on individual tiles and objects; sensor = true)
* Changed: addCustomLayer's index argument is now optional and defaults to the end of the array
* Fixed: a crash when using Base64 (uncompressed) with LOVE 0.9.2

## 2015-10-03: v0.14.1.1

* Added: support for gzip compressed maps (requires LOVE 0.10.0+)

## 2015-09-30: v0.14.1.0

* Added: support for Base64 compressed maps (requires LuaJIT)
* Added: support for zlib compressed maps (requires LOVE 0.10.0+)

## 2015-09-28: v0.14.0.1

* Added: Support for all staggered types (x/y, even/odd, iso/hex)

## 2015-09-27: v0.14.0.0

* Added: Hexagonal map support (thanks EntranceJew!)
* Added: Error message for compressed maps
* Fixed: box2d plugin threw an error in some cases (thanks maxha651!)

## 2015-09-17: v0.13.1.4

* Changed: sanity checks now search for love.physics instead of love.physics.*

## 2015-09-16: v0.13.1.3

* Changed: Improved documentation

## 2015-09-16: v0.13.1.2

* Changed: Simplified plugins
* Changed: Namespaced the box2d plugin
* Removed: Non-LOVE frameworks (they didn't work)

## 2015-09-16: v0.13.1.1

* Added: LDoc documentation
* Added: Plugin system where devs can extend STI
* Added: Reinstated the Box2D integration as a plugin

## 2015-09-15: v0.13.1.0

* Added: Map:convertToCustomLayer() now returns the layer
* Changed: Tightened localization of some functions
* Removed: Box2D collision integration
* Removed: Unused functions

## 2015-07-31: v0.12.3.0

* Added: Tiled version number to Map.tiledversion
* Added: Map.objects table indexed by unique object IDs
* Added: A better error message when trying to use Tile Collections
* Changed: Version number should now match Tiled's version number
* Changed: You must now add ".lua" in the filename of a new map as this is consistent with other libraries
* Changed: Renamed "pure" framework to "lua" (still doesn't work, though!)
* Changed: Map:setDrawRange no longer inverts tx and ty for you, do it yourself!
* Changed: Map:draw no longer accepts scale values, use love.graphics.scale!
* Fixed: A bug where tile objects were drawing an object border
* Removed: Corona framework file

## 2015-03-22: v0.9.8

* Fixed: A bug where Tiles without a Properties list would crash

## 2015-02-02: v0.9.7

* Added: userdata to Box2D fixtures
* Changed: changelog.txt -> CHANGELOG.md
* Changed: Flipping tiles now happens in both tile layers and object layers
* Fixed: A bug where tile objects were drawing oddly in some cases
* Fixed: A bug where circles would error if physics was disabled

## 2015-01-28: v0.9.6

* Added: getLayerProperties(), getTileProperties(), and getObjectProperties()
* Fixed: A bug where flipped tiles crashed STI during initCollision()
* Fixed: Flipped collision tiles now have correct offset
* Removed: Reverted the change in v0.9.3 that filled in empty tiles with false

## 2014-12-15: v0.9.5

* Fixed: A bug where tile collision objects were using the wrong size in some cases
* Fixed: A bug where flipped tiles weren't always creating collision objects

## 2014-12-05: v0.9.4

* Changed: STI's canvas plays nicely with other libraries
* Changed: addCustomLayer() now returns a handle on the created layer

## 2014-12-03: v0.9.3

* Added: Local Tile IDs to Tile objects
* Added: Terrain information
* Fixed: Some conversion functions
* Changed: Tile Layers now contain "false" instead of "nil" where there is no tile
* Changed: Added \_LICENSE, \_URL, \_VERSION, and \_DESCRIPTION properties to core STI object

## 2014-09-29: v0.9.2

* Added: Support for drawing tiles in object layers
* Fixed: Incorrect calculation of some collision objects

## 2014-09-26: v0.9.1

* Fixed: A crash when a collidable tile is initialized but not used
* Removed: Public access to formatPath(), rotateVertex(), and convertEllipseToPolygon()

## 2014-09-24: v0.9.0

* Added: Animated tiles! (Thanks to Clean3d)
* Fixed: A crash when a collidable rectangle has no rotation value
* Fixed: Incorrect values given to orthogonal collision objects

## 2014-09-24: v0.8.3

* Added: Map:convertScreenToTile() and Map:convertTileToScreen()
* Added: Map:convertScreenToIsometricTile() and Map:convertIsometricTileToScreen()
* Added: Map:convertScreenToStaggeredTile() and Map:convertStaggeredTileToScreen()
* Fixed: Map:removeLayer() now works properly
* Changed: Tile Objects now use the tile's collision map by default

## 2014-09-22: v0.8.2

* Added: "collidable" property for objects, tiles, and layers
	* if collidable is set to true in Tiled, STI will pick it up and set all appropriate entities to collidable objects
* Fixed: Physics module no long required if not needed.
* Fixed: Whitespace discrepencies
* Changed: Map:initWorldCollision() now supports a whole lot more

## 2014-09-21: v0.8.1

* Added: README now lists minimum requirements
* Changed: README updated with new collision system
* Changed: Map:enableCollision() renamed to Map:initWorldCollision()
* Changed: Map:drawCollisionMap() renamed to Map:drawWorldCollision()
* Changed: Updated framework files (still no real Lua/Corona support)
* Changed: Tidied up collision code
* Removed: Map:getCollisionMap()

## 2014-09-20: v0.8.0

* Added: Box2D collision via Map:enableCollision()
* Added: Map:convertEllipseToPolygon()

## 2014-09-17: v0.7.6

* Added: Map:convertScreenToIsometric and Map:convertIsometricToScreen
* Added: Map:setObjectCoordinates
* Added: Map:rotateVertex
* Fixed: Adjusted map positioning for Isometric and Staggered maps
* Fixed: Object positioning in Isometric maps
* Removed: Temporary fix for Tiled 0.9.1

## 2014-08-05: v0.7.5

* Fixed: Properties offset by 1
* Fixed: Drawing a single Layer can now use Layer's name/index

## 2014-04-28: v0.7.4

* Fixed: Canvas resize type

## 2014-04-18: v0.7.3

* Fixed: Canvas using wrong filter

## 2014-04-08: v0.7.2

* Removed: Dependency for LuaJIT's bitwise operations

## 2014-04-08: v0.7.1

* Added: Map:resize(w, h)
* Changed: Map:draw() now takes two optional arguments: ScaleX and ScaleY
* Changed: STI now draws to a Canvas before drawing to screen (fixes scaling oddities)

## 2014-04-07: v0.7.0

* Added: Files for Corona and Pure Lua implementation
* Changed: Restructured sti.lua into several files
* Changed: Library is now LOVE agnostic and should allow for implementation of other frameworks

## 2014-03-1 : v0.6.16

* Changed: Ellipses now use polygons instead of... Not polygons.

## 2014-03-1 : v0.6.15

* Fixed: Tile spacing calculated properly in all cases

## 2014-02-0 : v0.6.14

* Fixed: Tile properties ACTUALLY being added now!

## 2014-01-2 : v0.6.13

* Added: Missing Tile Flag

## 2014-01-2 : v0.6.12

* Added: drawCollisionMap() now supports Isometric and Staggered maps
* Changed: drawCollisionMap() now requires a collision map parameter
* Changed: setCollisionMap() renamed to getCollisionMap()
* Changed: getCollisionMap() now returns the collision map
* Fixed: Tile properties not being added
* Removed: Map.collision table removed

## 2014-01-2 : v0.6.11

* Added: Descriptive error messages
* Fixed: Image filters for scaling

## 2014-01-2 : v0.6.10

* Fixed: Optimized load time

## 2014-01-25: v0.6.9

* Fixed: Parallax Scrolling

## 2014-01-25: v0.6.8

* Changed: Revised and restructured code
* Changed: createCollisionMap() renamed to setCollisionMap()
* Changed: newCustomLayer() renamed to addCustomLayer()

## 2014-01-24: v0.6.7

* Fixed: Number of tiles wasn't calculated properly

## 2014-01-24: v0.6.6

* Fixed: Spacing wasn't calculated properly

## 2014-01-24: v0.6.5

* Added: Staggered Maps

## 2014-01-24: v0.6.4

* Added: Isometric Maps

## 2014-01-20: v0.6.3

* Added: Tile Flags (flip/rotation)

## 2014-01-20: v0.6.2

* Fixed: A scaling bug

## 2014-01-19: v0.6.1

* Fixed: A bug causing the Collision Map to be nil

## 2014-01-19: v0.6.0

* Added: Sprite Batches

## 2014-01-19: v0.5.0

* Added: Draw Range optimization

## 2014-01-18: v0.4.3

* Added: Layer draw offsets

## 2014-01-17: v0.4.2

* Changed: Organized library a little better

## 2014-01-17: v0.4.1

* Fixed: Tiles incorrectly offset
* Fixed: Drawing concave polygons

## 2014-01-17: v0.4.0

* Added: Draw Object Layers

## 2014-01-16: v0.3.3

* Added: Create new Custom Layer
* Added: Callbacks for all layers
* Added: Remove Layer
* Changed: Simplified sti.new()

## 2014-01-16: v0.3.2

* Fixed: Crash if using Tiled 0.9.1
* Changed: Map structure to remove "map" table

## 2014-01-16: v0.3.1

* Added: Update callback to Custom Layers

## 2014-01-16: v0.3.0

* Added: Support for converting layers to Custom Layers
* Changed: sti.new() no longer requires the file extension

## 2014-01-15: v0.2.2

* Added: Support for basic collision layer

## 2014-01-15: v0.2.1

* Added: Support for map instances
* Added: Name alias to layer indices
* Changed: Sandboxed map environment
* Changed: Data structures are more efficient
* Removed: Unnecessary update function

Thanks to JarrettBillingsley for many of these changes

## 2014-01-14: v0.2.0

* Fixed: Drawing Tile Offset
* Changed: Tile Layer data structure is more efficient
* Changed: Simplified Quad generation

## 2014-01-14: v0.1.0

* Initial Commit
* Added: Orthogonal Map support
* Added: Draw Tile Layers
* Added: Draw Image Layers
* Added: Ignore Hidden Layers
* Added: Layer Opacity
