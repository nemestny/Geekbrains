module Hello
  def say(name)
    "Hello, #{name}!"
  end
end

class Greet
  prepend Hello
  def say(name)
    "Greet: hi, #{name}!"
  end
end

greet = Greet.new
puts greet.say('world')

p Greet.ancestors
