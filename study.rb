contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
keys = [:email, :address, :phone]

contacts.each do |name, hash|
  keys.each do |field|
    hash[field] = contact_data.shift
  end
end

p contacts


# def stringy(string_length, optional=1)
#   numbers = []

# if optional == 1
#   string_length.times do |index|
#     number = index.even? ? 1 : 0
#     numbers << number
#   end

# elsif optional == 0
#   string_length.times do |index|
#     number = index.even? ? 0 : 1
#     numbers << number
#   end

# else
#   puts "Please put either 1 or 0"
# end

#   numbers.join
# end

# puts stringy(6, 0)
# puts stringy(9, 0)
# puts stringy(4, 0)
# puts stringy(7, 0)

# rb101 small problems, easy 3, exclusive or
# def xor?(argument_1, argument_2)
#   if argument_1 == true && argument_2 == false
#     true
#   elsif argument_1 == false && argument_2 == true
#     true
#   else
#     false
#   end
# end

# p xor?(5.even?, 4.even?) == true
# p xor?(5.odd?, 4.odd?) == true
# p xor?(5.odd?, 4.even?) == false
# p xor?(5.even?, 4.odd?) == false


# def my_method(arg)
#   p arg.object_id
#   arg = "dog"
#   puts arg
# end

# animal = "dog"
# p animal.object_id
# my_method(animal)
# p animal.object_id



# require 'date'

# puts Date.civil
# puts Date.civil(2016)
# puts Date.civil(2016, 5)
# puts Date.civil(2016, 5, 13)





# x = [1, 2, 3]

# x.each do |x|
#   x << 4
#   break
# end

# p x

# x = [1, 2, 3]

# x.each do |x|
#   puts x
# end










# def remove_evens!(arr)
#   arr.each do |num|
#     if num % 2 == 0
#       arr.delete(num)
#     end
#   end
#   arr
# end

# p remove_evens!([1,1,2,3,4,6,8,9])

# def example(str)
#   i = 3  
#   loop do    
#     puts str    
#     i -= 1    
#     break if i == 0  
#   end
# end

# example('hello')