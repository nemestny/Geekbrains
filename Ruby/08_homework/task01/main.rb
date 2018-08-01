require 'pathname'

def scan(path,counter = 0)
  entries = Dir.new(path).reject { |x| %w[. ..].include? x }.map { |x| path.join x  }
  p entries
  entries.each do |item|
    counter = scan(item,counter) if File.directory? item
    counter +=1 if item.extname == '.rb'
  end
  counter
end

path = Pathname.new('c:\Projects\Geekbrains\Ruby')
p scan(path)
# p counter
