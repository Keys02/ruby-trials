class Array
  def mult 
    result = 1
    self.each do |num| 
      result *= num
    end
    return result
  end
end

puts [2,6,6,3,2].mult