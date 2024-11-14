def greetings(arr, hsh)
  name = arr.join(' ')
  job = hsh.values.join(' ')
  "Hello, #{name}! Nice to have a #{job} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })