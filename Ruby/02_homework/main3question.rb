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
  return nil unless colors[index]
  colors[index]
end

# Вывод цвета по запросу
print 'Введите номер цвета от 1 до 7: '
number = gets.to_i
color = colors number

begin
  raise 'Введен неверный номер' unless color
  puts color
rescue StandardError => e
  puts e.message
end
