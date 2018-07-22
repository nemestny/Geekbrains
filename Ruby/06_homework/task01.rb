##
# class for all persons
class Person
  attr_accessor :surname, :name, :middle_name
  private_class_method :new
  def initialize(surname:, name:, middle_name:)
    @surname = surname
    @name = name
    @middle_name = middle_name
  end
end

##
# class of users
class User < Person
  public_class_method :new
end

##
# class of admins
class Admin < Person
  public_class_method :new
end

##
# class of moderators
class Moderator < Person
  public_class_method :new
end

# no errors
user = User.new(surname: 'Юзеров',
                name: 'Юзер',
                middle_name: 'Юзерович')
p user

admin = Admin.new(surname: 'Админов',
                  name: 'Админ',
                  middle_name: 'Админович')
p admin

moderator = Moderator.new(surname: 'Модераторов',
                          name: 'Модератор',
                          middle_name: 'Модераторович')
p moderator

# error
person = Person.new(surname: 'Персонов',
                    name: 'Никодим',
                    middle_name: 'Аверьянович')
p person
