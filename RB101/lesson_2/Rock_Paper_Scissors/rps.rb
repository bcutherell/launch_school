VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']
WINNING_COMBINATIONS = {
  'rock' => ['scissors', 'lizard'],
  'paper' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard'],
  'lizard' => ['spock', 'paper'],
  'spock' => ['scissors', 'rock']
}

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  WINNING_COMBINATIONS[first].include?(second)
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
    prompt "Welcome to Rock Paper Scissors Lizard Spock!"
    prompt "The first to 3 total wins, well.... wins!"

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

  if player_score == 3
    prompt "**The Player has bested the Computer!**"
  elsif computer_score == 3
    prompt "**The Computer has bested the Player!**"
  end

  prompt "The current score is Player: #{player_score} and Computer: #{computer_score}"
  prompt "Would you like to play again? (y/n)" # Can't figure out how to not have this after every move.
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thank you for playing. Goodbye!"
