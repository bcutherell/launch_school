def extend_greeting(hello)
  hello + " there"
end

greeting = "hi"
extend_greeting(greeting)

puts greeting
puts extend_greeting(greeting)