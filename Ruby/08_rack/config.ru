require 'rack'

run proc { |env| [200, { 'Content-type' => 'text/plain' },['Hello world!']] }