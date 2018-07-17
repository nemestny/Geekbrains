class Worker
  def hello
    puts Error::SALARY
  end
end

class Worker::Error
  SALARY = 'Заработная плата должна быть больше нуля'
  NAME = 'Введите корректное имя'
end

puts Worker::Error::SALARY
