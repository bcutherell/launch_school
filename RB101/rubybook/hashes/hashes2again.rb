cat = {name: "whiskers"}
weight = {weight: "10 lbs"}

#puts cat.merge(weight)
#puts cat
#puts weight

puts cat.merge!(weight)
puts cat
puts weight

# merge with a bang is destructive and 
# mutates the calling hash