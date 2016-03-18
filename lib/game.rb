require 'pry'

class Game
  attr_reader :player1, :player2, :turn, :type_of_attack
  DEFAULT_ATTACK = 9
  @game = nil
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @turn = player1
  end

  def attack
    case @type_of_attack
    when :normal then random_attack opposing
    when :fixed then fixed_attack opposing
    when :cure then cure @turn
    else
      raise 'No attacked selected'
    end
  end

  def set_attack(attack_type)
    @type_of_attack = attack_type.to_sym
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

  def cure(player)
    player.attacked -10
  end
end
