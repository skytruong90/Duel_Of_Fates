-- Player definition with health and mana
Player = {}
Player.__index = Player

function Player:new(name, health, mana)
    local player = {name = name, deck = {}, hand = {}, health = health, mana = mana}
    setmetatable(player, Player)
    return player
end

function Player:drawCard()
    local cardDrawn = table.remove(self.deck)
    cardDrawn:loadCanvas()
    table.insert(self.hand, cardDrawn)
    utils.updateCardRow(player1.hand, 512, 456, 15)
end

function Player:addCardToDeck(card)
    table.insert(self.deck, card)
end

function Player:addCardToHand(card)
    table.insert(self.hand, card)
end

function Player:takeDamage(damage)
    self.health = self.health - damage
end

function Player:useMana(amount)
    self.mana = self.mana - amount
end

return Player