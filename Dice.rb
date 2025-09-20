class Dice
  def initialize
    roll
  end

  def roll
    @number_showing = rand(1..6)
  end
  
  def showing 
    @number_showing
  end
  
  def set_showing(num)
    puts num == Integer && num > 0 && num <= 6 ? @number_showing = num : "You are cheating"
  end
end

dice1 = Dice.new
puts dice1.showing
dice1.set_showing(3.5)
puts dice1.showing