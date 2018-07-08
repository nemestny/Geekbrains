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

  def to_str
    to_s
  end
end

users = []

# Generate array of random users
10.times do |n|
  users[n] = User.new
  # generate random name 5 length
  users[n].name = rand(36**5).to_s(36).capitalize
  users[n].rating = rand(1..5)
end

puts users

# Find one user with max rating
top_user = users.max_by(&:rating)

puts "Пользователь с максимальной оценкой: #{top_user}"
