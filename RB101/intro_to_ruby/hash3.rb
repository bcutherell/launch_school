practice = {one: 1, two: 2, three: 3}

def keys(hash)
  puts hash.keys
end

def values(hash)
  puts hash.values
end

keys(practice)
values(practice)

practice.each_pair do |key, value|
  puts "The key is #{key} and the value is #{value}."
end
