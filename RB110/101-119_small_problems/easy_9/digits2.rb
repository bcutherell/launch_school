# def sum(number)
#   number.digits.sum
# end

# def sum(number)
#   total = 0
#   number.digits.each { |num| total += num }
#   total
# end

def sum(number)
  total = []
  number.digits.each { |num| total << num }.sum
end

puts sum(23)
puts sum(496)
puts sum(123_456_789)