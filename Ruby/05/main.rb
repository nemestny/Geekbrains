class HelloWorld
  # def HelloWorld.say
  def self.say
    'hello'
  end

  def instance_say
    'instance hello'
  end
end



puts HelloWorld.say

hello = HelloWorld.new
puts hello.instance_say

# puts HelloWorld.instance_say
