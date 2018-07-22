class Rainbow
  include Enumerable

  def each
    yield 'красный'
    yield 'оранжевый'
    yield 'желтый'
    yield 'зеленый'
    yield 'голубой'
    yield 'синий'
    yield 'фиолетовый'
  end
end

r = Rainbow.new
puts r.map(&:upcase)
