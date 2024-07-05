def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end

system('clear')

prompt("Welcome to my Mortgage Calculator! What is your name?")

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt("Make sure to use a valid name, please!")
  else
    break
  end
end

prompt("Hello, #{name.capitalize}! Let's get started!")

loop do # main loop
  loan_amount = ''
  loop do
    prompt("What is your loan amount?")
    loan_amount = gets.chomp

    if valid_number?(loan_amount)
      break
    else
      prompt("Please enter a valid number")
    end
  end

  apr = ''
  loop do
    prompt("What is the Annual Percentage Rate for your loan?")
    prompt("Example: 5.5 = 5.5%")
    apr = gets.chomp

    if valid_number?(apr)
      break
    else
      prompt("Please enter a valid number")
    end
  end

  loan_duration = ''
  loop do
    prompt("How many years are you going to take to pay it off?")
    loan_duration = gets.chomp

    if valid_number?(loan_duration)
      break
    else
      prompt("Please enter a valid duration")
    end
  end

  apr = apr.to_f / 100
  monthly_interest_rate = apr.to_f / 12
  loan_duration_months = loan_duration.to_i * 12

  monthly_payment = loan_amount.to_f *
                    (monthly_interest_rate /
                    (1 - ((1 + monthly_interest_rate)**(-loan_duration_months))))

  prompt("Calculating monthly payment...")
  sleep(0.75)
  prompt("For a loan of $#{format('%.2f', loan_amount)} with an APR of %#{apr * 100} and duration of #{loan_duration} years")
  prompt("your monthly payment will be $#{format('%.2f', monthly_payment)}.")

  prompt("Would you like to calculate another monthly payment?")
  repeat = gets.chomp
  break unless repeat.downcase.start_with?('y')
end

prompt("Thank you for using my Mortgage Calculator.")
prompt("Have a great day, #{name.capitalize}!")
