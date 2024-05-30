# COMBINATION 2
sub = []
array = [1,2,3,4,5]
array = ['A', 'B', 'C', 'D', 'E']
(0...array.length - 1).each do |i|   # for index of everything 0,1,2,3,4
  (i + 1...array.length).each do |j| # 
    # WHATEVER CODE TO IMPLEMENT WITH i AND j AS ARGUMENTS 
    # sub << [i, j]
      sub << [array[i], array[j]]
    # p "when i index==#{i}, j index==#{j}"
  end
end
sub
# ONLY INDICES FROM LINE 7 => 
# [[0, 1], [0, 2], [0, 3], [0, 4], [1, 2], [1, 3], [1, 4], [2, 3], [2, 4], [3, 4]]
# DIRECT ACCESS FROM LINE 8 array == numbers =>
# [[1, 2], [1, 3], [1, 4], [1, 5], [2, 3], [2, 4], [2, 5], [3, 4], [3, 5], [4, 5]]
# DIRECT ACCESS FROM LINE 8 array == letters =>
# [["A", "B"],["A", "C"],["A", "D"],["A", "E"],
#  ["B", "C"],["B", "D"],["B", "E"],
#  ["C", "D"],["C", "E"],
#  ["D", "E"]]

# COMBINATION 3
sub = []
array = [1,2,3,4,5,6]
array = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J']
(0...array.length - 2).each do |i| # -2 because last 2 elements are in last sub
  (i + 1...array.length - 1).each do |j| # -1 because last element is in last sub
                                         # 
    (j + 1...array.length).each do |k| # goes to the end of the array
    # WHATEVER CODE TO IMPLEMENT WITH i AND j AND k AS ARGUMENTS 
     sub << [i, j, k]
     sub << [array[i], array[j], array[k]]
    # p "when i index==#{i}, j index==#{j}, k index==#{k}"
    end
  end
end
sub
# DIRECT ACCESS FROM WHEN ARRAY == NUMBERS =>
[[1, 2, 3],
 [1, 2, 4],
 [1, 2, 5],
 [1, 3, 4],
 [1, 3, 5],
 [1, 4, 5],
 [2, 3, 4],
 [2, 3, 5],
 [2, 4, 5],
 [3, 4, 5]]
 # OR DIRECT ACCESS FROM WHEN ARRAY == LETTERS =>
 [["A", "B", "C"],
 ["A", "B", "D"],
 ["A", "B", "E"],
 ["A", "C", "D"],
 ["A", "C", "E"],
 ["A", "D", "E"],
 ["B", "C", "D"],
 ["B", "C", "E"],
 ["B", "D", "E"],
 ["C", "D", "E"]]