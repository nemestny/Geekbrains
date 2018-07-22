class Ticket
  def price
    5.5
  end

  def date
    '01.10.2018'
  end

  public :price, :date
end

ticket = Ticket.new
p ticket.price
