#All gems up here
require 'pry'
require 'colorize'
#Pull in other classes you may need
require_relative 'player'
require_relative 'heads_or_tails'
require_relative 'blackjack'


class Casino
  attr_accessor :player

  def initialize
    puts 'Welcome To Our Ruby Casino!'
    @player = Player.new
    casino_menu
  end

  def casino_menu
    game_array = ["HeadsTails", "BlackJack", "Roulette"]
    puts "What game would you like to play #{@player.get_name}?"
    puts game_array
    puts "For HeadsTails enter 1, For BlackJack enter 2, for Poker enter 3, to exit
    the casino type 4."

    game_choice = gets.chomp.to_i

    case game_choice
      when 1
        HeadsTails.new(@player)
      when 2
        Blackjack.new(@player)
      when 3
        Roulette.new(@player)
      when 4
        Puts "ok, have a nice day."
        exit
      else
        puts "That game is not offered here.  Sorry, choose again"
        casino_menu
    end
  end
end

Casino.new
