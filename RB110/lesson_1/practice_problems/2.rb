ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
age_sum = 0


ages.each do |key, value|
  age_sum += value
end

p age_sum
