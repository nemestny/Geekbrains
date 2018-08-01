require 'pathname'

def scan(path,counter = 0)
  entries = Dir.new(path).reject { |x| %w[. ..].include? x }.map { |x| path.join x  }
  p entries
  entries.reduce(counter) do |counter, item|
    if File.directory? item
      scan(item, counter)
    elsif item.extname == '.rb'
      counter + 1
    else
      counter
    end
  end

end

path = Pathname.new('c:\Projects\Geekbrains\Ruby')
p scan(path)
