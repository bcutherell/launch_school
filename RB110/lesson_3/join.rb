# def joinor(arr)
#   arr.each do |num|
#     num
#   end
# end

# joinor([1, 2])
# joinor([1, 2, 3])

# arr = [1, 2, 3, 4]

# arr.map do |num|
#   num.to_s + ", "
# end

# def joinor(arr, punct = ', ', extra = 'or')
# str = []
#   arr.map do |num|
#     if num == arr.last
#       str << num.to_s.prepend(extra + ' ')
#     else
#       str << num.to_s
#     end
#   end
# str.join(punct)
# end

# def joinor(arr, punctuation = ', ', delim = 'or')
#   if arr.length <= 1
#     arr.join
#   elsif arr.length == 2
#     arr.join (" #{delim} ")
#   else
#     arr[0..-2].join(punctuation) + ', ' + delim + ' ' + arr[-1].to_s
#   end
# end



def joinor(arr, delimiter = ', ', word = 'or')
  case arr.size
  when 0 then ''
  when 1 then arr.first.to_s
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr[-1]}"
    arr.join(delimiter)
  end
end

p joinor([1, 2])
p joinor([1, 2, 3])
p joinor([1, 2, 3], '; ')
p joinor([1, 2, 3], ', ', 'and')
p joinor([])
p joinor([1])