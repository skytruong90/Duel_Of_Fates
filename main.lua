Card = require("card")

function love.load()
    testImage = love.graphics.newImage("Tree_example_VIS.jpg")
end


-- Define a player
Player = {}
Player.__index = Player

function Player:new(name)
    local player = {}
    setmetatable(player, Player)
    player.name = name
    player.deck = {}
    return player
end

function Player:drawCard()
    return table.remove(self.deck, 1)
end

function Player:addCardToDeck(card)
    table.insert(self.deck, card)
end

-- Create players with different characters
player1 = Player:new("Student") -- Character 1
player2 = Player:new("The Emperor") -- Character 2

-- Create decks
for i = 1, 50 do
    local attack = math.random(1, 10)
    local defense = math.random(1, 10)
    player1:addCardToDeck(Card:new("Card " .. i, attack, defense))
    player2:addCardToDeck(Card:new("Card " .. i, attack, defense))
end

-- Players draw cards and battle
local battleResult = "Press space to start the game"
local cardPlayer1, cardPlayer2

function love.keypressed(key)
    if key == "space" then
        cardPlayer1 = player1:drawCard()
        cardPlayer2 = player2:drawCard()

        battleResult = cardPlayer1.name .. " vs " .. cardPlayer2.name

        if cardPlayer1.attack > cardPlayer2.defense then
            battleResult = battleResult .. "\n" .. player1.name .. " wins!"
        elseif cardPlayer1.attack < cardPlayer2.defense then
            battleResult = battleResult .. "\n" .. player2.name .. " wins!"
        else
            battleResult = battleResult .. "\n" .. "It's a draw!"
        end
    end
end

function love.draw()
    love.graphics.setColor(1, 1, 1) -- Set color to white for the text
    love.graphics.print(battleResult, 10, 10)

    if cardPlayer1 then
        love.graphics.setColor(0, 0, 1) -- Set color to blue for card display
        love.graphics.print(player1.name .. "'s Card: " .. cardPlayer1.name, 10, 30)
        love.graphics.print("Attack: " .. cardPlayer1.attack, 10, 50)
        love.graphics.print("Defense: " .. cardPlayer1.defense, 10, 70)

        love.graphics.setColor(1, 0, 0) -- Set color to red for card display
        love.graphics.print(player2.name .. "'s Card: " .. cardPlayer2.name, 10, 100)
        love.graphics.print("Attack: " .. cardPlayer2.attack, 10, 120)
        love.graphics.print("Defense: " .. cardPlayer2.defense, 10, 140)

        love.graphics.draw(testImage, 200, 200)

        -- Add graphical elements (e.g., card images, character avatars) here
        -- You can load images using love.graphics.newImage() and display them
        -- alongside the card information.
        -- For example:
        -- local cardImage1 = love.graphics.newImage("card1.png")
        -- love.graphics.draw(cardImage1, 200, 30)
        -- ...
    end
end
