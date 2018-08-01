require 'rack'
require 'rack/lobster'

class MyMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    unless env['PATH_INFO'] == '/'
      return [ 404, {'Content-type' => 'text/plain'}, ['Not Found']]
    end
    @app.call(env)
  end
end

map '/lobster' do
  run Rack::Lobster.new
end

map '/static' do
  run Rack::File.new 'static'
end

use MyMiddleware

run -> (env) do 
  [200, { 'Content-type' => 'text/plain' },['Hello world!']] 
end