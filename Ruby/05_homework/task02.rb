require_relative 'user'

user = User.new(surname: 'Ivanov',
                name: 'Ivan',
                middle_name: 'Petovich')

puts 'Hello, ' + user

p user.full_name

p user.to_a
