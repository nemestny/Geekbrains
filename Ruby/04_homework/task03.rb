##
# class of user
class User
  attr_accessor :name, :rank
end

user = User.new
print 'Введите имя пользователя: '
user.name = gets.chomp

until (1..5).cover?(rank ||= 0)
  print 'Введите оценку пользователя (1-5): '
  rank = gets.to_i
end

user.rank = rank

p user
