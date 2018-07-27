arr1 = %w[red orange yellow green gray indigo violet]
arr2 = %w[красный оранжевый желтый зеленый голубой синий фиолетовый]

p arr1.map(&:to_sym).zip(arr2).to_h
