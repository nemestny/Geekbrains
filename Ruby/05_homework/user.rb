##
# class of User
class User
  attr_accessor :surname, :name, :middle_name

  def initialize(surname:, name:, middle_name:)
    @surname = surname
    @name = name
    @middle_name = middle_name
  end

  def to_a
    [@surname, @name, @middle_name]
  end

  def to_s
    to_a.join(' ')
  end

  def to_str
    to_s
  end

  def full_name
    @name
  end
end
