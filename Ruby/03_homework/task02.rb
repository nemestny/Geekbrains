numbers = []

10.times do
  numbers << rand(100)
end

p numbers
puts "Min: #{numbers.min}, Max: #{numbers.max}"
