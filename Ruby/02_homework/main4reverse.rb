##
# Справочник цветов
def colors(index)
  colors = [nil,
            'красный',
            'оранжевый',
            'желтый',
            'зеленый',
            'голубой',
            'синий',
            'фиолетовый']
  # return nil unless colors[index]
  colors[index]
end

##
# Метод опроса справочника для получения индекса цвета
def colors_reverse(color)
  1.upto 7 do |i|
    return i if color.eql?(colors(i))
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
rescue StandardError => e
  puts e.message
end
