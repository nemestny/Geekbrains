class Ticket
  attr_accessor :price, :date

  def initialize(price:, date:)
    @price = price
    @date = date
  end

  def to_s
    "дата - #{date}, цена - #{price}"
  end

  alias to_str to_s
end

ticket = Ticket.new(price: 5.5, date: '01.10.2018')

puts 'Билет: ' + ticket
