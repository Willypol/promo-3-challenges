def pmu_format!(race_array)
  #TODO: modify the given array so that it is PMU-consistent
  race_array.map!.with_index do |pmu,index|
    "#{index+1}-#{pmu}!"
  end
  race_array.reverse!
end




