local utils = {
    
    --Wraps love.graphics.draw(), but uses absolute scale instead of relative
    drawSizedImage = function(image, x, y, r, width, height, ox, oy, kx, ky)
        local oldWidth, oldHeight = image:getDimensions()
        local scaleX = width / oldWidth
        local scaleY = height / oldHeight
        love.graphics.setColor(1,1,1)
        love.graphics.draw(image, x, y, r, scaleX, scaleY, ox, oy, kx, ky)
    end,

    rectContainsPoint = function(rectX, rectY, width, height, pointX, pointY)
        local rightEdge = rectX + width
        local bottomEdge = rectY + height
        --doesn't account for reversed rectangles but there won't be any
        return (rectX < pointX) and (rectY < pointY) and
        (rightEdge > pointX) and (bottomEdge > pointY)

    end,

    updateCardRow = function(cardArray, centerX, centerY, offset)
        local y = centerY - Card.height / 2
        local totalOffset = Card.width + offset
        local totalWidth = #cardArray * (totalOffset) - offset
        local x = centerX - totalWidth / 2
        x = x - totalOffset
        love.graphics.setColor(1,1,1)
        for i, card in ipairs(cardArray) do
            card.x = x + (totalOffset * i)
            card.y = y
            print(card.x)
        end
    end,

    renderCardRow = function(cardArray, centerX, centerY, offset)
        local y = centerY - Card.height / 2
        local totalOffset = Card.width + offset
        local totalWidth = #cardArray * (totalOffset) - offset
        local x = centerX - totalWidth / 2
        x = x - totalOffset
        love.graphics.setColor(1,1,1)
        for i, card in ipairs(cardArray) do
            if card.visible then
                love.graphics.draw(card.canvas, x + totalOffset * i, y, 0, 1)
            end
        end
    end
}
return utils