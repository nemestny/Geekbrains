##
# Справочник цветов
def colors index
  case index
    when 1 
      'красный'
    when 2
      'оранжевый'
    when 3
      'желтый'
    when 4
      'зеленый'
    when 5
      'голубой'
    when 6
      'синий'
    when 7
      'фиолетовый'
    else
      nil             
    end
end

##
# Метод опроса справочника для получения индекса цвета
def colors_reverse color
  1.upto 7 do |i|
    return i if color.eql?(colors i)
  end
  nil
end

# Вывод номера цвета по названию
print 'Введите название цвета: '
color = gets.strip.encode('utf-8')
number = colors_reverse color

begin
  raise 'Название цвета введено неверно' unless number
  puts "Номер цвета: #{number}"
rescue => e
  puts e.message
end
