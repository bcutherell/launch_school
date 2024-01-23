puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retire = gets.chomp.to_i

current_year = Time.now.year
years_to_retire = retire - age
years = current_year + years_to_retire
years_left = years - current_year

puts "It's #{current_year}. You will retire in #{years}!"
puts "You have only #{years_left} years of work to go!"