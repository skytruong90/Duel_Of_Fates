love = love -- quick hack to stop lsp from showing errors

Card = require("card")
Player = require("player")

DECK_SIZE = 50

function love.graphics.resizedImageFromData(imageData, newWidth, newHeight) 
    local oldWidth, oldHeight = imageData.getDimensions()
    local newImageData = love.image.newImageData(newWidth, newHeight, "rgba8", imageData)
    return love.graphics.newImage(newImageData)
end

function love.load()
    exampleCard = Card:newUnit("wolf",1,2,1)
    exampleCard:loadCanvas()

    math.randomseed(os.time())
    -- Create players with different characters
    player1 = Player:new("Student") -- Character 1
    player2 = Player:new("The Emperor") -- Character 2

    all_cards = require("cards")
    for i = 1, DECK_SIZE do
        cardIndex = math.random(1, #all_cards)
        player1:addCardToDeck(cards[cardIndex])
        cardIndex = math.random(1, #all_cards)
        player2:addCardToDeck(cards[cardIndex])
    end
end


function love.mousepressed(x, y, button, istouch, presses)
    print(x, y)
    if utils.rectContainsPoint(5,5, 70, 100, x, y) then
        player1:drawCard()
    end
end


function love.update(dt)
    --print("X:   " .. love.mouse.getX() .. "   Y:   " .. love.mouse.getY())
end



function love.draw()
    --love.graphics.setColor(1,1,1)
    --love.graphics.draw(exampleCard.canvas, 0, 0, 0, 1)

    --draw decks
    love.graphics.setColor(1,1,1)
    utils.drawSizedImage(Card.rearImage, 5, 395, 0, 70, 100)
    love.graphics.print("remaining cards: ".. #player1.deck, 5, 495)
    utils.drawSizedImage(Card.rearImage, 5, 5, 0, 70, 100)
    love.graphics.print("remaining cards: ".. #player2.deck, 5, 105)


end
