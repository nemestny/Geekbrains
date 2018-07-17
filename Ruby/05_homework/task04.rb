##
# class of Settings
class Settings
  attr_accessor :block
  def initialize (&block)
    yield self if block_given?
  end
end

setting = Settings.new { |s| s.hello = 'world'}

p setting.hello