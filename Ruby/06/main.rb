class User
  attr_accessor :name, :family, :patronymic 
  def initialize(name:, family:, patronymic:)
    @name = name
    @family = family
    @patronymic = patronymic
  end

  def to_a
    [@family, @name, @patronymic]
  end

  alias to_ary to_a
end

user = User.new(family: 'Сидоров', name: 'Иван', patronymic: 'Петрович')

puts ['программист', 'ruby'] + user
