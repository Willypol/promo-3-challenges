def most_common_words(file_name, stop_words_file_name, number_of_word)
  #TODO: return hash of occurences of number_of_word most frequent words
  hash_words = Hash.new()

  File.open(file_name,"r").each_line do |line|
    words_array = line.split
    words_array.each do |word|
      File.open(stop_words_file_name,"r").each_line do |stop_word|
        if stop_word==word
          #get rid of word, break the loop
          words_array.delete(word)
          break
        end
      end
      if hash_words[word] != nil
        hash_words[word] += 1
      else
        hash_words[word] = 1
      end
    end
  end
  puts hash_words
end

most_common_words("testWagon.txt","stop_words.txt",5)