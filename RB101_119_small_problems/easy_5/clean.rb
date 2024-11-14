def cleanup(string)
  non_alphabet = "-"
  string.chars.each do |char|
    char.delete(non_alphabet)
  end
  string
end


p cleanup("---what's my +*& line?")