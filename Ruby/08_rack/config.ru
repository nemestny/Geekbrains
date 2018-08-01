require 'rack'

class App
  def self.call(env)
    [200, { 'Content-Type' => 'text/html' }, ['Hello ruby!']]
  end
end

run App
