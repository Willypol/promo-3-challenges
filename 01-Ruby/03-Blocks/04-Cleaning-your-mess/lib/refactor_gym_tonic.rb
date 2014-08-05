# Very dirty code to make some dirty gym...
# def hop_hop_hop(number_of_exercises)
#   for i in (1..number_of_exercises) do
#     counter = 0
#     until counter == i do
#       print "hop! "
#       counter += 1
#     end
#     unless counter != i # Test if reaching the end of the current exercise.
#       # Prints message in that case
#       print 'One more time..' + "\n"
#     end
#     # Reset counter to 0 for the next exercise
#     counter = 0
#   end
# end

def hop_hop_hop_2(number_of_exercises)
  i = 1
  until i > number_of_exercises do
    for j in (1..i) do
      print "hop! "
    end
    print 'One more time..' + "\n"
    i+=1
  end
end

hop_hop_hop_2(6)
