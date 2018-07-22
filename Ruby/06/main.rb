class Person
  attr_accessor :name

  def initialize(name:, score:)
   @name = name
   @score = score
  end

  def compare(user)
    if @score > user.score
      'Выигрывает первый игрок'
    elsif @score < user.score
      'Выигрывает второй игрок'
    else
      'Ничья'
    end
  end

  protected
  # private

  def score
   @score
  end
end

user1 = Person.new(name: 'Первый игрок', score: 12)
user2 = Person.new(name: 'Второй игрок', score: 8)

puts user1.compare(user2)
