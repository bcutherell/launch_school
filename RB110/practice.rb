# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
# flintstones_hash = {}
# counter = 0

# flintstones.each_with_index do |element, index|
#   flintstones_hash[element] = index
# end

# flintstones.each do |name|
#   flintstones_hash[name] = counter
#   counter += 1
# end

# p flintstones_hash
#-----------------------------
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# ages_total = 0

# ages.values.each do |age|
#   ages_total += age
# end

# ages.each do |name, age|
#   ages_total += age
# end

# p ages_total
#-----------------------------
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# p ages.reject { |key, value| value >= 100 }
# p ages.select { |key, value| value < 100}
# p ages.delete_if { |key, value| value >= 100 }
#------------------------------

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# current_age = 0
# p ages.values.min

# loop do
#   current_age = ages.values



#-------------------------------

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# total_age_males = 0

# munsters.each do |member|
#   member.each do |details|
#     if details['gender'] == 'male'
#       total_age_males += details['age']
#     end
#   end
# end

# p total_age_males

# ----------------------------------

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# munsters.each_pair do |key, value|
#   puts "#{key} is a #{value['age']}-year-old #{value['gender']}."
# end

munsters.each do |key, value|
  puts "#{key} is a #{value['age']}"
end