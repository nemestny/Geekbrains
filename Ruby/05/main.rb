class Ticket
  @@counter = 0

  def initialize
    @@counter += 1
  end

  def counter
    @@counter
  end

end

ticket1 = Ticket.new
ticket2 = Ticket.new

puts "Количество билетов: #{ticket1.counter}"