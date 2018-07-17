require_relative 'helloworld'

h = HelloWorld.new

puts h.say
puts hello.say

__END__
hello_class = Class.new do
	def say
		'hello'
	end
end
hello = hello_class.new
puts hello.say

__END__
class HelloWorld
	def say
		'hello'
	end
end

hello = HelloWorld.new
puts hello.say