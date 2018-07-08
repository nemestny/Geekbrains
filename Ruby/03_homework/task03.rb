##
# Class of User
class User
  def name
    @name
  end

  def name=(name)
    @name = name
  end

  def rating
    @rating
  end

  def rating=(rating)
    @rating = rating
  end

  def to_s
    "Имя: #{@name}, оценка: #{@rating}"
  end
end

users = []

3.times do |n|
  users[n] = User.new

  print "Введите имя Пользователя №#{n + 1}: "
  users[n].name = gets.strip
  print "Введите оценку Пользователя №#{n + 1}: "
  users[n].rating = gets.to_i
end

puts users
