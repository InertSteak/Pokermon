---Returns the second card in a set of cards.
---@param cards table Cards to calculate.
---@return table? # second card in hand if any.
JokerDisplay.calculate_second_card = function(cards)
    local sorted_cards = JokerDisplay.sort_cards(cards)
    return sorted_cards and sorted_cards[2]
end

---Returns the third card in a set of cards.
---@param cards table Cards to calculate.
---@return table? # third card in hand if any.
JokerDisplay.calculate_third_card = function(cards)
    local sorted_cards = JokerDisplay.sort_cards(cards)
    return sorted_cards and sorted_cards[3]
end

---Returns the fourth card in a set of cards.
---@param cards table Cards to calculate.
---@return table? # fourth card in hand if any.
JokerDisplay.calculate_fourth_card = function(cards)
    local sorted_cards = JokerDisplay.sort_cards(cards)
    return sorted_cards and sorted_cards[4]
end
