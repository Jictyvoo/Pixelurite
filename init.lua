local currentPath   = (...):gsub('%.init$', '') .. "."
local SpriteSheet = require string.format("%sSpriteSheet", currentPath)
local SpriteAnimation = require string.format("%sSpriteAnimation", currentPath)

local function getSpritesheet()
    return SpriteSheet
end

local function getSpriteAnimation()
    return SpriteAnimation
end

local function configureSpriteSheet(filename, directory, looping, duration, scaleX, scaleY, centerOrigin)
    local newSprite = SpriteSheet:new(filename, directory, nil)
    local frameTable, frameStack = newSprite:getFrames()
    local newAnimation = SpriteAnimation:new(frameTable, newSprite:getAtlas(), duration)
    if centerOrigin then
        newAnimation:setOrigin(newSprite:getCenterOrigin())
    end
    newAnimation:setType(looping)
    newAnimation:setScale(scaleX, scaleY)
    return newAnimation
end

return {
    getSpriteAnimation = getSpriteAnimation,
    getSpritesheet = getSpritesheet,
    configureSpriteSheet = configureSpriteSheet
}
