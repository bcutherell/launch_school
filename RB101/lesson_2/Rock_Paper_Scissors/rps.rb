VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']
WINNING_COMBINATIONS = {
  'rock' => ['scissors', 'lizard'],
  'paper' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard'],
  'lizard' => ['spock', 'paper'],
  'spock' => ['scissors', 'rock'],
  # 'r' => ['scissors', 'lizard'],
  # 'p' => ['rock', 'spock'],
  # 'sc' => ['paper', 'lizard'],
  # 'l' => ['spock', 'paper'],
  # 'sp' => ['scissors', 'rock']
}
SHORTHAND = {
  'r' => 'rock',
  'p' => 'paper',
  'sc' => 'scissors',
  'l' => 'lizard',
  'sp' => 'spock'
}
GRAND_MASTER_SCORE = 3

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

# def grand_master?(player_score, computer_score)
#   if player_score == 3
#     player_score = 0
#     computer_score = 0
#   elsif computer_score == 3
#     player_score = 0
#     computer_score = 0
#   end
# end


loop do # main loop
  player_score = 0
  computer_score = 0

  system('clear')
  prompt "Welcome to Rock Paper Scissors Lizard Spock!"
  prompt "The first to 3 total wins is the Grand Master!"

  while player_score < 3 && computer_score < 3
    player_choice = ''

    loop do
      prompt "Choose one: #{VALID_CHOICES.join(', ')}"
      player_choice = gets.chomp.strip

      if VALID_CHOICES.include?(player_choice)
        break
      else
        prompt "That's not a valid choice. Please try again."
      end
    end

    computer_choice = VALID_CHOICES.sample

    prompt "You chose: #{player_choice}; the Computer chose: #{computer_choice}"

    prompt display_results(player_choice, computer_choice)

    if win?(player_choice, computer_choice)
      player_score += 1
    elsif win?(computer_choice, player_choice)
      computer_score += 1
    end

    prompt "The current score is Player: #{player_score} and Computer: #{computer_score}"

  end

  if player_score == 3
    prompt "**The Player has bested the Computer!**"
    prompt "**The Player is the Grand Master!"
  elsif computer_score == 3
    prompt "**The Computer has bested the Player!**"
    prompt "**The Computer is the Grand Master!"
  end

  prompt "Would you like to play again? (y/n)" # Can't figure out how to not have this after every move.
  answer = gets.chomp.strip
  break unless answer.downcase.start_with?('y')

    # if player_score == 3
    #   player_score = 0
    #   computer_score = 0
    # elsif computer_score == 3
    #   player_score = 0
    #   computer_score = 0
    # end
end

prompt "Thank you for playing. Goodbye!"
