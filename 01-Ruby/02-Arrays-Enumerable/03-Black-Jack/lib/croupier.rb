require_relative 'black_jack'

def play_game
  #TODO: make the user play from terminal in a while loop that will stop when the user will not be asking for  a new card
  score = 0
  query = asking_for_card?(score)
  banque = bank_score
  while query == true
    score = score + pick_card
    puts state_of_the_game(score, banque)
    query = asking_for_card?(score)
  end
  outcome = game_outcome(banque, score)
  puts build_message_for(outcome)
end

def state_of_the_game(score, bank)
  # TODO: Returns custom message with player's score and bank's score
  return "Your score is #{score}, bank is #{bank}!"
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
  return "You are over 21... you loose." if outcome[1]>21
  return "Black Jack!" if outcome[1] == 21
  return "You beat the bank! You win." if outcome[1]>outcome[0]
  return "Bank beats you! You loose." if outcome[1]<outcome[0]
end
