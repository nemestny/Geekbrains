def my_loop
  n = 0
  puts 'Начало метода'
  yield n+=1
  yield n+=1
  yield n+=1
  puts 'Завершение метода'
end

my_loop do |num|
  puts "Итерация #{num}"
end