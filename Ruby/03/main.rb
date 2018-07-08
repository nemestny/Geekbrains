require_relative 'site/helloworld.rb'

hello = Site::HelloWorld.new
puts hello.say
puts Site::HelloWorld::MESSAGE
