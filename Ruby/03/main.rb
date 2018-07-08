$stdout = StringIO.new
puts 'Hello World'
File.write('output.log',$stdout.string)

# $stdout = STDOUT

STDOUT.puts 'Hello ruby World'