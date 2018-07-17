class Ticket
  def initialize(date: '01.01.2018', price: 5.5)
    set_price(price)
    set_date(date)
  end

  def set_price(price)
    @price = price
  end

  def price
    @price
  end

  def set_date(date)
    @date = date
  end

  def date
    @date
  end

end

ticket1 = Ticket.new
ticket2 = Ticket.new(price: 6.5, date: '02.03.1965')

puts "Цена билета ticket1: #{ticket1.price}, дата поездки #{ticket1.date}"
puts "Цена билета ticket2: #{ticket2.price}, дата поездки #{ticket2.date}"
