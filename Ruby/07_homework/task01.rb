h = { red: 'красный', orange: 'оранжевый', yellow: 'желтый', green: 'зеленый',
      blue: 'голубой', indigo: 'синий', violet: 'фиолетовый' }.invert
h.each { |key, value| h[key] = value.to_s }
puts h
