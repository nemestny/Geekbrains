class Ticket
  attr_accessor :price, :date

  def initialize(price:, date:)
    # @price = price
    # @date = date
    self.price = price
    self.date = date
  end
end

ticket = Ticket.new(price: 5.5, date: '01.10.2018')

p ticket
p Ticket.instance_methods(false)
