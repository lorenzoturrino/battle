require 'pry'

class Game
  attr_reader :player1, :player2, :turn
  DEFAULT_ATTACK = 9
  @game = nil
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @turn = player1
  end

  def attack(player, type_of_attack = nil)
    if type_of_attack.nil?
      random_attack(player)
    elsif type_of_attack == :fixed
      fixed_attack(player)
    end

  end



  def opposing
    @turn == @player1 ? @player2 : @player1
  end

  def change_turn
    @turn = opposing
  end

  def game_over?
    @player1.dead? || @player2.dead?
  end

  def winner
    return @player2 if @player1.dead?
    @player1
  end

  def self.save(game)
    @game = game
  end

  def self.load
    @game
  end

  private

  def random_punch_strength
    rand(5..15)
  end

  def fixed_attack(player)
    player.attacked DEFAULT_ATTACK
  end

  def random_attack(player)
    player.attacked random_punch_strength
  end

end
