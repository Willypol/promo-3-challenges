def beersong(nb_at_start)
  #TODO: sing the song
  while nb_at_start !=0
    if nb_at_start > 1
      puts "#{nb_at_start} bottles of beer on the wall, #{nb_at_start} bottles of beer!"
      nb_at_start=nb_at_start-1
      puts "Take one down, pass it around #{nb_at_start} bottles of beer on the wall!"
    elsif nb_at_start==1
      puts "#{nb_at_start} bottle of beer on the wall, #{nb_at_start} bottle of beer!"
      nb_at_start=nb_at_start-1
      puts "Take one down, pass it around no more bottles of beer on the wall!"
    end
  end
end

ARGV.each do |a|
  beersong(a.to_i)
end