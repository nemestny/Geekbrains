p ['cat', 'dog', 'tiger'].tap { |x| @origin = x }.map(&:upcase) + @origin
