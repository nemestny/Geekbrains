h = { red: 'красный',
      orange: 'оранжевый',
      yellow: 'желтый',
      green: 'зеленый',
      blue: 'голубой',
      indigo: 'синий',
      violet: 'фиолетовый' }
h_new = {}
h.each { |key, value| h_new[value] = key.to_s }
puts h_new
