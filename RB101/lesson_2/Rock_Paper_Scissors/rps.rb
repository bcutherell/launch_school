VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'lizard' && second == 'paper') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'spock' && second == 'rock')
end

def display_results(player, computer)
  if win?(player, computer)
    "You won!"
  elsif win?(computer, player)
    "The Computer won!"
  else
    "It's a tie!"
  end
end

player_score = 0
computer_score = 0
loop do # main loop

  player_choice = ''
  loop do
    system('clear')
    prompt "Choose one: #{VALID_CHOICES.join(', ')}"
    player_choice = gets.chomp

    if VALID_CHOICES.include?(player_choice)
      break
    else
      prompt "That's not a valid choice. Please try again."
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt "You chose: #{player_choice}; the Computer chose: #{computer_choice}"

  prompt display_results(player_choice, computer_choice)

  if display_results(player_choice, computer_choice) == "You won!"
    player_score += 1
  elsif display_results(player_choice, computer_choice) == "The Computer won!"
    computer_score += 1
  end

  prompt "Your score is #{player_score}, The Computer's is #{computer_score}."

  if player_score < 3 || computer_score < 3
     prompt "First to 3 wins!"
     sleep 2
  end

  break if player_score == 3 || computer_score == 3

  #break if player_score == 3 || computer_score == 3

  # answer = gets.chomp
  # break unless answer.downcase.start_with?('y')


end

prompt "Thank you for playing. Goodbye!"
