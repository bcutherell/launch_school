# You'll need three pieces of information:
# the loan amount
# the Annual Percentage Rate (APR)
# the loan duration

# From the above, you'll need to calculate the following things:
# monthly interest rate
# loan duration in months
# monthly payment

def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do # main loop
  prompt("Welcome to Mortgage / Loan Calculator!")
  prompt("What is the dollar loan amount you would like to take out?")

  amount = ''
  loop do
    amount = Kernel.gets().chomp()

    if amount.empty?() || amount.to_f() < 0
      prompt('Must enter positive number.')
    else
      break
    end
  end

  prompt("What is the interest rate?")
  prompt("(Example: 3 for 3% or 5.5 for 5.5%")

  interest_rate = ''
  loop do
    interest_rate = Kernel.gets().chomp()

    if interest_rate.empty?() || interest_rate.to_f() < 0
      prompt("Must enter positive number.")
    else
      break
    end
  end

  prompt("What is your loan duration in years?")

  years = ''
  loop do
    years = Kernel.gets().chomp()

    if years.empty?() || years.to_i() < 0
      prompt("Enter valid year")
    else
      break
    end
  end

  annual_interest_rate = interest_rate.to_f() / 100
  monthly_interest_rate = annual_interest_rate / 12
  months = years.to_i() * 12

  monthly_payment = amount.to_f() *
                    (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**(-months)))

  prompt("Your monthly payment is: $#{monthly_payment}")

  prompt("Another calculation?")
  answer = Kernel.gets().chomp()

  break unless answer.downcase().start_with?('y')
end

prompt("Thank you, goodbye!")









# prompt("Welcome to Mortgage / Loan Calculator!")

# prompt("What is the dollar loan amount you would like to take out?")
# loan_amount = Kernel.gets().chomp()

# prompt("What is your APR?")
# apr = Kernel.gets().chomp()

# prompt("What is your loan duration?")
# loan_duration = Kernel.gets().chomp()