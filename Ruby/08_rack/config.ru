require 'rack'

class App
  def self.call(env)
    headers = { 'Content-Type' => 'text/html' }
    status = 200
    body = 'Hello ruby'
    unless env['PATH_INFO'] == '/'
      status = 404
      body = 'Not found!'
    end
    [status, headers, [body]]
    # [200, { 'Content-Type' => 'text/html' }, ['Hello ruby!']]
  end
end

run App
