class Worker
  module Error
    SALARY = 'Заработная плата должна быть больше нуля'
    NAME = 'Введите корректное имя'
  end

  def hello
    puts Error::SALARY
  end

end

puts Worker::Error::SALARY
