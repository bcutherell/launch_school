# def penultimate(string)
#   if string.split.length <= 1
#     string
#   else
#     string.split[-2]
#   end
# end



# p penultimate('last word') #== 'last'
# p penultimate('Launch School is great!') #== 'is'

# p penultimate('last word') == 'last'
# p penultimate('Launch School is great!') == 'is'

# p penultimate('one')
# p penultimate('')

def half(string)
  halfway = string.split.length / 2
  if string.split.length <= 2
    string
  else
    string.split[halfway]
  end
end

p half('')
p half('one')
p half('two words')
p half('Launch School is the greatest!')