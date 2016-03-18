require 'pry'

class Player

  attr_reader :name, :hp

  DEFAULT_HP = 60

  def initialize(name, hp = DEFAULT_HP)
    @name = name.capitalize
    @hp = hp
  end

  def attacked amount
    @hp -= amount
  end

  def dead?
    @hp <= 0
  end

end
