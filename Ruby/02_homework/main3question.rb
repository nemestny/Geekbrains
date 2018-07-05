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

# Вывод цвета по запросу
print 'Введите номер цвета от 1 до 7: '
number = gets.to_i
color = colors number

begin
  raise 'Введен неверный номер' unless color
  puts color
rescue => e
  puts e.message
end
