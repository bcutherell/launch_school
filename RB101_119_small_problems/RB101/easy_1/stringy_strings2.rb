# first solution
def stringy(integer, start='1')
  array = []
  1.upto(integer) do |number|
    if start == '1'
      if number.odd?
        array << '1'
      else
        array << '0'
      end
    elsif number.odd?
      array << '0'
    else
      array << '1'
    end
  end
  array.join
end

# refactored
# def stringy(integer)
#   array = []
#   1.upto(integer) { |number| array << (number.odd? ? 1 : 0) }
#   array.join
# end

p stringy(6) #== '101010'
p stringy(9) #== '101010101'
p stringy(4) #== '1010'
p stringy(7) #== '1010101'

p stringy(6) == '101010'
p stringy(9) == '101010101'
p stringy(4) == '1010'
p stringy(7) == '1010101'

p stringy(6, 0) #== '101010'
p stringy(9, 0) #== '101010101'
p stringy(4, 0) #== '1010'
p stringy(7, 0) #== '1010101'
