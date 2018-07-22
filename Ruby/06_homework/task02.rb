##
# class of refrigerator
class Refrigerator
  attr_accessor :food, :power

  def initialize
    @food = {}
    @power = false
  end

  def power_on
    @power = true
  end

  def power_off
    @power = false
  end

  def put_food(product)
    @food[product] = :warm
    cooling(product)
    puts "#{product} on board!"
  end

  def take_food(product)
    if @food[product]
      puts "#{product} is #{@food[product]}"
      @food.delete(product)
    else
      puts "#{product} not found"
    end
  end

  private

  def cooling(product)
    @food[product] = :cool if @power
  end
end

fridge = Refrigerator.new
fridge.power_on

fridge.put_food('cola') # cola on board!
fridge.take_food('meat') # meat not found
fridge.take_food('cola') # cola is cool
fridge.take_food('cola') # cola not found

fridge.power_off
fridge.put_food('meat') # meat on board!
fridge.take_food('meat') # meat is warm

fridge.cooling('chips') # task02.rb:53:in `<main>': private method `cooling'
# called for #<Refrigerator:0x01ea5480 @food={}, @power=false> (NoMethodError)
