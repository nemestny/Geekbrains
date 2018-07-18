class Factory
  # attr_reader :count
  @@counter = { bear: 0,
              cube: 0,
              ball: 0}

  def create(type)
    @@counter[type] += 1
    p @@counter
  end

  def create_bear
    create(:bear)
    puts 'Медвежонок создан'
  end

  def create_cube
    create(:cube)
    puts 'Кубик создан'    
  end

  def create_ball
    create(:ball)
    puts 'Мячик создан'
  end

  def count (type)
    @@counter[type]
  end

  def method_missing(name)
     puts "Мы это не умеем: #{name}"   
  end
end

factory = Factory.new
loop do
  puts  '1 - Медвежонок, 2 - Кубик, 3 - Мячик',
        'Введите номер игрушки для создания',
        'или 0, чтобы вывести количество уже созданных: '
  num = gets.to_i

  case num
  when 0 
    puts  "Медвежат: #{factory.count(:bear)}",
          "Кубиков: #{factory.count(:cube)}",
          "Мячиков: #{factory.count(:ball)}"
  when 1 then factory.create_bear
  when 2 then factory.create_cube
  when 3 then factory.create_ball
  else
    puts 'Вы точно внимательно читали? Попробуйте ещё раз'
  end
end