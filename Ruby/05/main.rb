class HelloWorld
  class << self
    def say
      'hello'
    end
    def world
      'world'
    end
  end
end

puts HelloWorld.say
puts HelloWorld.world
