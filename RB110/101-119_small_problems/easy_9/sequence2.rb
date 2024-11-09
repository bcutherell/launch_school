# def sequence(count, sequence)
#   holder = []
#   counter = 0
#   number = 0

#   until counter == count
#     holder << number += sequence
#     counter += 1
#   end

#   holder
# end

def sequence(count, sequence)
  number = 0
  (1..count).map { |_| number += sequence }
end

p sequence(5, 1) #== [1, 2, 3, 4, 5]
p sequence(4, -7) #== [-7, -14, -21, -28]
p sequence(3, 0) #== [0, 0, 0]
p sequence(0, 1000000) #== []

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []