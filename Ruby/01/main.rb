require 'pry'
# Helloworld
class HelloWorld
  def say
    first = 5
    second = 2
    puts first + second
    puts 'Hello World!'
  end
end
# Runner
class Runner
  def start
    hello = HelloWorld.new
    hello.say
  end
end

run = Runner.new
run.start
