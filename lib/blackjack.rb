def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(11) +1
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  get_user_input = gets.chomp
end

def end_game(total)
  if total == 21
    puts "Blackjack! You hit #{total}! Thanks for playing!"
  else
    puts "Sorry, you hit #{total}. Thanks for playing!"
  end
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  total
end

def hit?(total)
  prompt_user
  user_input = get_user_input
  if user_input == "h"
    total += deal_card
    total
  elsif user_input == "s"
    total
  else
    invalid_command
    hit?(total)
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  while total < 21 do
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
    
# Add a dealer later. Plays like normal, but stays when total >= 17.
# Add option to manually end game.