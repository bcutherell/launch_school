def diamond(n)
  raise ArgumentError, "n must be an odd integer." if n.even?
  
  # Upper part of the diamond
  (0..n / 2).each do |i|
    # Print leading spaces
    print ' ' * (n / 2 - i)
    # Print asterisks
    puts '*' * (2 * i + 1)
  end

  # # Lower part of the diamond
  # (n / 2 - 1).downto(0) do |i|
  #   # Print leading spaces
  #   print ' ' * (n / 2 - i)
  #   # Print asterisks
  #   puts '*' * (2 * i + 1)
  # end
end

# Example usage
diamond(9)
