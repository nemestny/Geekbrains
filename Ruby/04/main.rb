require_relative 'tree'

def walk(arr=[], &block)
  arr.each do |x|
    case x
    when Hash
      x.each { |_dir, files| walk(files, &block)}
    when String
      block.call x
    end
  end
end

walk(TREE) { |file| puts file}
