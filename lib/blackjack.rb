def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  Random.rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  hand = deal_card + deal_card
  display_card_total(hand)
  hand
end

def hit?(card_total)
  # code hit? here
  prompt_user
  choice = get_user_input

  if choice == "s"
    #display_card_total(card_total)
    card_total
  elsif choice == "h"
    card_total = card_total + deal_card
    display_card_total(card_total)
    card_total
  else
    invalid_command(card_total)
  end
end

def invalid_command(card_total)
  # code invalid_command here
  puts "Please enter a valid command"
  hit?(card_total)
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  hand = initial_round

  while hand < 22
    hand = hit?(hand)
  end

  end_game(hand)
end

#runner
