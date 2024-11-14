def swap_name(name)
  array = name.split
  "#{array[1]}, #{array[0]}"
end

p swap_name('Joe Roberts') #== 'Roberts, Joe'