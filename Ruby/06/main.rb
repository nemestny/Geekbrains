require 'singleton'

class Factory
  include Singleton
end

# factory = Factory.new
# p factory

factory1 = Factory.instance
p factory1
factory2 = Factory.instance
p factory2