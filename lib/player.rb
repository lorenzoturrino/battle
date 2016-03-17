require 'pry'

class Player

  attr_reader :name, :hp

  DEFAULT_HP = 60
  ATTACK_POINTS = 10

  def initialize(name, hp = DEFAULT_HP)
    @name = name.capitalize
    @hp = hp
  end

  def attacked
    @hp -= ATTACK_POINTS
  end

  def dead?
    @hp <= 0
  end

end
