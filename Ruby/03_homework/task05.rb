##
# class of Point
class Point
  attr_accessor :x
  attr_accessor :y

  def random
    @x = rand(-100..100)
    @y = rand(-100..100)
  end

  def to_s
    "Координаты точки: X=#{@x}, Y=#{@y}"
  end
end

point01 = Point.new
point01.random

point02 = Point.new
point02.random

puts point01
puts point02

distance_x = (point01.x - point02.x).abs
distance_y = (point01.y - point02.y).abs
distance = (distance_x**2 + distance_y**2)**0.5

puts "Расстояние между точками: #{distance}"
