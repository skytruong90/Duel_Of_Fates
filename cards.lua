Card = require("card")

cards = {
    {
        name = "wolf",
        cost = 1,
        attack = 2,
        health = 1,
    },

    {
        name = "tank",
        cost = 3,
        attack = 5,
        health = 1,
    }
}

for _, card in ipairs(cards) do
    setmetatable(card, Card)
end

return cards