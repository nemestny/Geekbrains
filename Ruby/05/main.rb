module Hello
  class World
    def say
      puts 'Определяем метод say в первый раз'
    end
  end

  class World
    def say
      puts 'Определяем метод say во второй раз'
    end
  end
end

hello = Hello::World.new
hello.say