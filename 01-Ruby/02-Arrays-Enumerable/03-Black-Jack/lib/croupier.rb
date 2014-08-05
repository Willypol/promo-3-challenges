require_relative 'black_jack'

def play_game
  #TODO: make the user play from terminal in a while loop that will stop when the user will not be asking for  a new card
  score = 0
  banque = bank_score

  while asking_for_card?(score)
    score += pick_card
    puts state_of_the_game(score, banque)
  end

  outcome = game_outcome(banque, score)
  puts build_message_for(outcome)
end

def state_of_the_game(score, bank)
  # TODO: Returns custom message with player's score and bank's score
  "Your score is #{score}, bank is #{bank}!"
end

def asking_for_card?(score)
  # TODO: Ask for a card only if the score is less or equal to 21, then returns true or false according to the user's choice
  if score < 21
    puts "Card ? (type 'Y' or 'yes' for a new card)"
    resp = gets.chomp
    condition = resp == "yes" || resp == "Y"
    return condition
  end
end

def build_message_for(outcome)
  #TODO: return specific message depending on the game outcome (= bank's score and user's score)
  if outcome[1] > 21
    message = "You are over 21... you loose."
  else
    if outcome[1] == 21
      message = "Black Jack!"
    elsif outcome[1] > outcome[0]
      message = "You beat the bank! You win."
    else
      message = "Bank beats you! You loose."
    end
  end
  message
end
