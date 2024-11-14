def staggered_case(string)
  arr = string.downcase.chars
  arr.each_with_index { |letter, index| letter.upcase!  if index.even? }
  arr.join
end

def staggered_case(string)
  string.chars.map.with_index do |character, index|
    if index.even?
      character.upcase
    else
      character.downcase
    end
  end.join
end

p staggered_case('I Love Launch School!')
p staggered_case('ALL_CAPS')
p staggered_case('ignore 77 the 444 numbers')

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'