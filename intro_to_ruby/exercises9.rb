hash = {a:1, b:2, c:3, d:4}

p hash[:b]
p hash[:e] = 5
p hash.delete_if { |key, value| value < 3.5 }
