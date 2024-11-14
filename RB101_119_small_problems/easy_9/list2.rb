def buy_fruit(list)
  holder = []

  # list.each do |sub|
  #   sub[1].times do
  #     holder << sub[0]
  #   end
  # end

  list.each { |sub| sub[1].times { holder << sub[0] } }

  holder
end


p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]