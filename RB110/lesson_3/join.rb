# def joinor(arr)
#   arr.each do |num|
#     num
#   end
# end

# joinor([1, 2])
# joinor([1, 2, 3])

arr = [1, 2, 3, 4]

arr.map do |num|
  num.to_s + ", "
end