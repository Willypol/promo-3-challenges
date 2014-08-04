def bank_score
  # TODO: Use Random to get a new random score
  a = 16 + rand(6)
  return a
end

def pick_card
  # TODO: Use Random to get a new random card
  b = 1+rand(11)
  return b
end

def game_outcome(bank, score)
  # TODO: Take the bank and the score and output an array containing the bank and then the score
  return outcome = [bank,score]
end
