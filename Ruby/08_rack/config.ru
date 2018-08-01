require 'rack'

run -> (env) do 
  [200, { 'Content-type' => 'text/plain' },['Hello world!']] 
end