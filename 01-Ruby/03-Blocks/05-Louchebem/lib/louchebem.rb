# Encoding: utf-8

def louchebemize(sentence)
  #TODO: implement your louchebem translator
  puts arrange_beginning(sentence)
end

def arrange_beginning(word)
  while word.start_with?("a","e","i","o","u")==false
    word=word+word[0] #word.split("").last
    word=word[1..-1]
  end
  word = "l"+word+select_suffix
  return word
end

def select_suffix
  suffix_array = ["em", "é", "ji", "oc", "ic", "uche", "ès"]

  suffix_array[rand(0..6).round]
end

louchebemize("csaluté")