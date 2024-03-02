CARD_WIDTH = 70
CARD_HEIGHT = 100

utils = require("utils")

Card = {}
Card.__index = Card
Card.rearImage = love.graphics.newImage("assets/card back black.png")
Card.backgroundImage = love.graphics.newImage("assets/parchment.jpg")
Card.cost = 0

function Card:loadBackground()
   love.graphics.setColor(1,1,1)
   utils.drawSizedImage(self.backgroundImage, 0, 0, 0, CARD_WIDTH, CARD_HEIGHT)
end

function Card:loadName()
    love.graphics.setColor(0,0,0)
    love.graphics.print(self.name, 20, 40)
end

function Card:loadCost()
    love.graphics.setColor(0,0,1)
    love.graphics.print(self.cost, 0, 0)
end

function Card:loadAttack()
    love.graphics.setColor(1,1,0)
    love.graphics.print(self.attack or "", 62, 84)
end

function Card:loadHealth()
    love.graphics.setColor(1,0,0)
    love.graphics.print(self.health or "", 0, 84)
end

function Card:loadCanvas()
    local cardCanvas = love.graphics.newCanvas()
    cardCanvas:renderTo(function() 
        self:loadBackground()
        self:loadCost()
        self:loadAttack()
        self:loadHealth()
        self:loadName()
    end)
    self.canvas = cardCanvas
end



function Card:newUnit(name, cost, attack, health, keywords, artPath)
    local card = {
        name = name,
        cost = cost,
        attack = attack,
        health = health,
        keywords = keywords,
        artPath = artPath,
    }
    
    setmetatable(card, self)
    return card
end

return Card