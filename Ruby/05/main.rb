class Ticket
  def initialize(price:, status:)
    @price = price
    @status = status
  end

  def price
    @price
  end

  def status?
    @status
  end
end

ticket = Ticket.new(price: 5.5, status: false)

puts format('Цена билета %.2f',ticket.price)
if ticket.status?
  puts 'Билет продан'
else
  puts 'Билет доступен для покупки'
end