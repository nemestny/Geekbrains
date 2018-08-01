require 'rack'

##
# Class of App
class App
  def self.call(_env)
    headers = { 'Content-Type' => 'text/html' }
    status = 200
    body = 'View X-Ruby-Version in Headers'
    headers['X-Ruby-Version'] = RUBY_VERSION
    [status, headers, [body]]
  end
end

run App
