class Palette
  def initialize(colors = [])
    @colors = colors
    @colors = yield if block_given?
  end

  def each
    @colors.each { |c| yield c}    
  end
end

colors = %w[красный оранжевый желтый зеленый
            голубой синий фиолетовый]
pal = Palette.new(colors)
pal.each { |color| puts color}

pal1 = Palette.new do 
  %w[красный оранжевый желтый зеленый
  голубой синий фиолетовый]
end

pal1.each { |color| puts color}