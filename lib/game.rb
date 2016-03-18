require 'pry'

class Game
  attr_reader :player1, :player2, :turn
  @game = nil
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @turn = player1
  end

  def attack(player)
    player.attacked punch_strength
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

  def punch_strength
    srand
    rand(5..15)
  end


end
