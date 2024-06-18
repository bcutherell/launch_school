not_mutated = {one: 1 , two: 2 , three: 3}
mutated = {four: 4, five: 5, six: 6}

p not_mutated.merge(mutated)
p mutated.merge!(not_mutated)

p not_mutated
p mutated

cat = {name: "whiskers"}
weight = {weight: "10 lbs"}
puts cat.merge(weight)
puts cat   
puts weight
puts cat.merge!(weight)
puts cat   
puts weight