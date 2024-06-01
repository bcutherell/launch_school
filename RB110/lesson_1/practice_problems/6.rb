flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! do |name|
  name[0, 3]
end

p flintstones







=begin

input: array
output: same array modified
rules: shorten each object to three letters
do not create a new array, modify the original, it should be mutating

algorithm:
iterate through each object in the array
cut the first three letters of each word off and keep them

=end