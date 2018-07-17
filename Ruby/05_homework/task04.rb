##
# class of Settings
class Settings

  # attr_accessor :block
  def initialize
     @@settings = {}   
    def self.method_missing(name,*args)
      # puts name
      # p args

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

    # create_methods @@settings
    # p @@settings.class
     class << self
      @@settings.each do |method, name|
        define_method method do
          name
        end
      end
    end
  end

  # def create_methods settings
  #   p settings
  #   settings.each do |method, name|
  #     define_method method do
  #       name
  #     end
  #   end
  # end

end

setting = Settings.new { |s| s.hello = 'world', s.bye = 'all', s.test = 'test'}

# p setting.methods

p setting.hello
p setting.bye
p setting.test
p setting.walk