##
# class of Array
class Array
  def my_map
    out = []
    return unless block_given?
    each { |e| out << yield(e) }
    out
  end
end

p [1, 2, 3, 4].my_map { |i| i + 1 }
p %w[hello ruby world].my_map(&:upcase)
