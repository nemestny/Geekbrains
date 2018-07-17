##
# class for saying Hello
class Hello
	def initialize(word)
		@word = word
	end

	def say
		puts to_s
	end

	def to_s
		"Hello #{@word}"
	end
end

hello = Hello.new('world')
hello.say
puts hello
