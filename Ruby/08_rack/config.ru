require 'rack'

class App
  def self.call(env)
    headers = { 'Content-Type' => 'text/html' }
    status = 200
    body = 'Hello ruby from anywhere!!!!'
    unless env['PATH_INFO'] == '/'
      status = 404
      body = 'Not found!'
    end
    headers['Content-Length'] = body.length.to_s
    [status, headers, [body]]
    # [200, { 'Content-Type' => 'text/html' }, ['Hello ruby!']]
  end
end

run App
