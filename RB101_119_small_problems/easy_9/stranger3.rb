def greetings(array, hash)
  name = array.join(' ')
  job = "#{hash[:title]} #{hash[:occupation]}"
  p "Hello, #{name}! Nice to have a #{job} around!"
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })

