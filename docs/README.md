# Pixelurite

Is a library that helps LÖVE programmers to load spritesheets from Piskel, or other tools that use PixiJS pattern.

## How to Use

```lua
local Pixelurite = require "Pixelurite"
local mySpriteSheet = Pixelurite.getSpritesheet():new(spriteName, assetsDirectory, jsonDecoder)
--[[ the jsonDecoder parameter is a function that can decode a json--]]
local frameTable, frameStack = mySpriteSheet:getFrames()
local mySpriteAnimation = Pixelurite.getSpriteAnimation():new(frameTable, mySpriteSheet:getAtlas(), duration)

--[[ or you can do this--]]
local otherAnimation = Pixelurite.configureSpriteSheet(filename, directory, looping, duration, scaleX, scaleY, centerOrigin)
```

After initial config, you can just use the animation update and draw functions, to automatic update the animation and draw it.

```lua
    function love.update(dt)
        otherAnimation:update(dt)
    end
    function love.draw()
        otherAnimation:draw(x, y, scaleX, scaleY, originX, originY)
    end
```

## Animation Functions

We still have some other functions for animation, like

* resetCurrent()
* setScale(scaleX, scaleY)
* setOrigin(originX, originY)
* setType(looping)
* setDuration(newDuration)
* isOver()
* nextFrame()
* update(dt)
* draw(x, y, rotation, scaleX, scaleY, originX, originY)
