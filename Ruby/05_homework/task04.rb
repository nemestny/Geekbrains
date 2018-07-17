##
# class of Settings
class Settings

  def initialize
     @@settings = {}   
    def method_missing(name,*args)
      if name.to_s.include?('=')
        key = name.to_s.delete('=').to_sym

        @@settings[key] = case args.first
        when Array
          args[0][0]
        when String
          args[0]
        end
        
      end
    end
    p @@settings
    yield self if block_given?
    p @@settings

     class << self
      @@settings.each do |method, name|
        define_method method do
          name
        end
      end
    end
  end

  def method_missing(name)
    puts 'sssssssssssssssss'
  end
end

setting = Settings.new { |s| s.hello = 'world', s.bye = 'all', s.test = 'test'}

# p setting.methods

p setting.hello
p setting.hello
p setting.hello
p setting.bye
p setting.methods
p setting.walk