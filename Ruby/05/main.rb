class Ticket
  attr_accessor :price, :date

  def initialize(date: '01.01.2018', price: 5.5)
    @price = price
    @date = date
  end
end

ticket1 = Ticket.new
ticket2 = Ticket.new(price: 6.5, date: '02.03.1965')

ticket1.price = 10.333

puts "Цена билета ticket1: #{ticket1.price}, дата поездки #{ticket1.date}"
puts "Цена билета ticket2: #{ticket2.price}, дата поездки #{ticket2.date}"
