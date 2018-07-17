##
# class of Settings
class Settings
  def initialize
    @@settings = {}

    def self.method_missing(name, *args)
      key = name.to_s.delete('=').to_sym
      @@settings[key] = args.flatten[0] || super
    end

    yield self if block_given?

    class << self
      @@settings.each do |method, name|
        define_method method do
          name
        end
      end
    end

  end
  def method_missing(name)
    raise NameError, "Неверное имя параметра: #{name}" || super
  end
end

setting = Settings.new { |s| s.hello = 'world', s.bye = 'all', s.test = 'test' }

p setting.hello
p setting.bye
p setting.test
p setting.walk
