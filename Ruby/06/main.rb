class Ticket
  attr_accessor :status, :price

  def initialize(price:)
    @price = price
    @status = false    
  end

  def buy
    @status = true
    self
  end
end

ticket = Ticket.new(price: 5.5)
puts ticket.buy.price
