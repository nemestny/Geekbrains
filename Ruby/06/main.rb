class Ticket
  attr_accessor :date, :price

  def initialize
    yield self  
  end
end

price = Ticket.new do |t|
          t.date = '01.10.2018'
          t.price = 5.5
        end

p price
