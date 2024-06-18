ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages.any?("Spot")
p ages.value?("Spot")
p ages.include?("Spot")
p ages.key?("Spot")
p ages.member?("Spot")