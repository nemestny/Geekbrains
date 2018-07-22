class Ticket
  puts 'Класс Ticket'
  puts self
  module Summary
    puts 'Модуль Summary'
    puts self
  end
  puts 'Вернемся в Ticket'
  puts self
end