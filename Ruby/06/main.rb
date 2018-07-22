class Ticket
  def price
    5.5
  end

  private

  def date
    '01.10.2018'
  end
end

ticket = Ticket.new
p ticket.price
p ticket.date
