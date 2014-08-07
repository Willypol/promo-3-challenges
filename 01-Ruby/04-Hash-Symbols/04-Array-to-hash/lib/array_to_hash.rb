def array_to_hash(array)
  #TODO: implement the method :)
  Hash[array.map.with_index{|value,index| [index, value]}]
end