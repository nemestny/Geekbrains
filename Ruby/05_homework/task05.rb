class Factory
  @@count = { bear: 0,
              cube: 0,
              ball: 0}
  attr_reader :count

  def create(type)
    
  end

end

class Toy
  attr_accessor :type
end