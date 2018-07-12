def my_loop(&block)
  return unless block_given?
  block.call while true
end

my_loop do
  puts 'hello'
end
