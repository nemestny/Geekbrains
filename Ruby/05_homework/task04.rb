##
# class of Settings
class Settings

  # attr_accessor :block
  def initialize
    @settings = {}
    
    def self.method_missing(name,*args)
      puts name
      p args
      if name.to_s.include?('=')
        @settings[name] = case args.first
        when Array
          args[0][0]
        when String
          args[0]
        end
      end
    end
    p @settings
    yield self if block_given?
    p @settings
  end
end

setting = Settings.new { |s| s.hello = 'world', s.bye = 'all', s.test = 'test'}

# p setting.hello