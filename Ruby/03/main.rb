class Ticket
  def date=(date)
    @date = date    
  end

  def date
    @date
  end
end

ticket = Ticket.new
ticket.date='01'

ticket2 = Ticket.new
ticket2.date = 'hhghg'
puts ticket.date
puts ticket2.date