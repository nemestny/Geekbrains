module Duckable
  def quack
    'Кряк'
  end

  def swim
    'Плавает как утка'
  end
end

class Duck
  include Duckable
end

class PseudoDuck
  include Duckable
end

duck = Duck.new
object = PseudoDuck.new
ticket = Object.new

def ticket.quack
  'Кряк'
end

def ticket.swim
  'Плавает как утка'
end

puts 'duck - это утка' if duck.respond_to?(:quack) && duck.respond_to?(:swim)
puts 'object - это утка' if object.respond_to?(:quack) && object.respond_to?(:swim)
puts 'ticket - это утка' if ticket.respond_to?(:quack) && ticket.respond_to?(:swim)
