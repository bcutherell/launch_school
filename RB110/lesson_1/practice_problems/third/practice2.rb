ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
total_ages = 0

ages.each_value { |age| total_ages += age }

ages.each { |name, age| total_ages += age }

p total_ages
