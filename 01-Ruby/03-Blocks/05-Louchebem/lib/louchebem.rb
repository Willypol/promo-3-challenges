# Encoding: utf-8

def louchebemize(sentence)
  #TODO: implement your louchebem translator
  puts arrange_beginning(sentence)
end

def arrange_beginning(word)
  unless word.start_with?("a","e","i","o","u")
    word=word+word[0] #word.split("").last
    word=word[1..-1]
    arrange_beginning(word)
  end
  word = "l"+word
  return word
end

louchebemize("saluté")