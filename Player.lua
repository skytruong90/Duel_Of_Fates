-- Player definition with health and mana
Player = {}
Player.__index = Player

function Player:new(name, health, mana)
    local player = setmetatable({name = name, deck = {}, hand = {}, health = health, mana = mana}, Player)
    return player
end

function Player:drawCard()
    self.hand:insert(self.deck.remove())
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