def most_common_words(file_name, stop_words_file_name, number_of_word)
  #TODO: return hash of occurences of number_of_word most frequent words
  hash_words = Hash.new()

  File.open(file_name,"r").each_line do |line|
    words_array = line.split
    temp_array = []
    words_array.each do |word|
      count = 0
      File.open(stop_words_file_name,"r").each_line do |stop_word|
        if stop_word==word
          count += 1
        end
      end
      if count == 0
        temp_array << word
      end
    end
    temp_array.each do |word|
      if hash_words[word] != nil
        hash_words[word] += 1
      else
        hash_words[word] = 1
      end
    end
  end
  puts hash_words.sort_by{|_key, value| value}.reverse.first(number_of_word)

end

most_common_words("testWagon.txt","stop_words.txt",5)