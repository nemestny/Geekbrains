module MyNamespace
  class Array
    def to_s
      'my_class'
    end
  end
end

p Array.new
p MyNamespace::Array.new

puts '#'*30

puts Array.new
puts MyNamespace::Array.new
