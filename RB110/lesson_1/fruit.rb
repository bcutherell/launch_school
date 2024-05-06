def select_fruit(item)
  current_item = {}
  counter = 0

  loop do
    current_item = item.select{|k,v| v == "Fruit"}
    counter += 1
    break if counter == item.size
  end

  current_item
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

puts select_fruit(produce)