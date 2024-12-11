BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)

def block_word?(string)
  array = string.upcase.chars
  BLOCKS.each do |block|
    if array.include?(block[0]) && array.include?(block[1])
      return false
    elsif
      array.include?(block[0]) || array.include?(block[1])
      return true
    end
  end

end

def block_word?(string)
  uppercase = string.upcase
  BLOCKS.none? do |block|
    uppercase.count(block) >= 2
  end
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
p block_word?('apples') == false
p block_word?('Baby') == false


p block_word?('BATCH') #== true
p block_word?('BUTCH') #== false
p block_word?('jest') #== true
p block_word?('apples') #== false
p block_word?('Baby') #== false
