Card = {
}

function Card:new(name, attack, defense, ... )
    local card = {}
    card.name = name
    card.attack = attack
    card.defense = defense
    card.cost = cost

    for i, keyword in ipairs({...}) do
        if i == 1 then
            card.cost = keyword
        end
    end

    return card
end
return Card