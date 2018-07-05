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

# Вывод случайного цвета
puts colors rand(1..7)
