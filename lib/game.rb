require 'pry'

class Game
  attr_reader :player1, :player2, :turn
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @turn = player1
  end

  def attack(player)
    player == @player2 ? @player2.attacked : @player1.attacked
  end

  def opposing
    @turn == @player1 ? @player2 : @player1
  end

  def change_turn
    @turn = (@turn == @player1 ? @player2 : @player1)
  end

  def game_over?
    @player1.dead? || @player2.dead?
  end

  def winner
    return @player2 if @player1.dead?
    @player1
  end


end
