# You'll need three pieces of information:

# the loan amount
# the Annual Percentage Rate (APR)
# the loan duration

# From the above, you'll need to calculate the following things:

# monthly interest rate
# loan duration in months
# monthly payment

# monthly_payment = loan_amount * (monthly_interest / (1 - (1 + j)**(-loan_duration)))

puts "Hey there! Welcome to the loan calculator!"
puts "What size loan would you like to take out?"
loan_amount = gets.chomp.to_i

puts "What APR would you like?"
apr = gets.chomp.to_f

puts "Over how many years would you like to pay the loan?"
loan_duration = gets.chomp.to_i

