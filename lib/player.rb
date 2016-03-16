require 'pry'

class Player

  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = 60
  end

  def attacked
    @hp -= 10
  end

end
