-- This is how you define a card
Card = {}
Card.__index = Card

function Card:new(name, attack, defense)
    local card = {}
    setmetatable(card, Card)
    card.name = name
    card.attack = attack
    card.defense = defense
    return card
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

-- Create cards
card1 = Card:new("Dragon", 5, 5)
card2 = Card:new("Knight", 3, 3)

-- Create players and add cards to their decks
player1 = Player:new("Player 1")
player1:addCardToDeck(card1)

player2 = Player:new("Player 2")
player2:addCardToDeck(card2)

-- Players draw cards and battle
local battleResult = ""

function love.keypressed(key)
    if key == "space" then
        local cardPlayer1 = player1:drawCard()
        local cardPlayer2 = player2:drawCard()

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
    love.graphics.print(battleResult, 10, 10)
end
