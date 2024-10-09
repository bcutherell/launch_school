# def spin_me(str)
#   str.split.each do |word|
#     word.reverse!
#   end.join(" ")
# end

# hello = 'hello world'

# p hello.object_id
# p spin_me(hello).object_id

def spin_me(arr)
  arr.each do |word|
    word.reverse!
  end
end

arr = ['hello', 'world']
puts arr.object_id
puts spin_me(arr).object_id