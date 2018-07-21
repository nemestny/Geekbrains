class Ticket
  include Comparable
  attr_accessor :price, :date

  def initialize(price:, date:)
    @price = price
    @date = date
  end

  def +(number)
    @price += number
    self
  end

  def <=>(ticket)
    @price <=> ticket.price    
  end
end

ticket1 = Ticket.new(price: 5.5, date: '01.10.2018')
ticket2 = Ticket.new(price: 5.5, date: '01.10.2018')

ticket1 += 2

if ticket1 > ticket2
  puts 'Билет 1 дороже билета 2'
elsif ticket1 < ticket2  
  puts 'Билет 2 дороже билета 1'
else
  puts 'Билеты стоят одинаково'
end