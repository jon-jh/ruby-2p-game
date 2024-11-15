class Player
  attr_accessor :name, :points

  def initialize(name)
    @name = name
    @points = 3
  end

  def lose_point
    @points -=1
  end

  def status
    "#{name}: #{points}/3 points"
  end
end
