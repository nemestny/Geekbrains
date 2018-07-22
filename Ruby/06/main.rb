class Ticket
  def price
    price_format(5.5)
  end

  def date
    '01.10.2018'
  end

  private

  def price_format(price)
    format('Цена билета %.2f',price)    
  end

end

ticket = Ticket.new
p ticket.price
p ticket.date
# p ticket.price_format(5.6)
