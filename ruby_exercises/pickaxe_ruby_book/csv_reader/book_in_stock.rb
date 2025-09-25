class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price) 
    @isbn = isbn
    @price = Float(price)
  end 

  def price_in_cents=(price)
    @price = (price / 1000).round
  end

  def price_in_cents
    (@price * 1000).round
  end
end