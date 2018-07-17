require_relative 'user'

##
# class for Group of Users
class Group
  attr_accessor :users

  def initialize(*users)
    @users = users
  end

  def list
    @users.map(&:to_s)
  end
end

user1 = User.new(surname: 'Ivanov',
                 name: 'Ivan',
                 middle_name: 'Ivanovich')

user2 = User.new(surname: 'Petrov',
                 name: 'Petr',
                 middle_name: 'Petovich')

user3 = User.new(surname: 'Sidorova',
                 name: 'Maria',
                 middle_name: 'Pavlovna')

group = Group.new(user1, user2, user3)

puts group.list
