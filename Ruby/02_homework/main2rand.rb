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

# Вывод случайного цвета
puts colors rand(1..7)