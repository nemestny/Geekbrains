module Seo
  attr_accessor :keywords, :seo_title, :description
end

class Page
	attr_accessor :title, :body, :headers
end

class News < Page
  include Seo
  attr_accessor :date
end

class About < Page
  include Seo
  attr_accessor :phones, :addresses
end

class PhotoCatalog < Page
  attr_accessor :photos
end

about = About.new

about.title = 'О нас'
about.body = 'Вы сможете обнаружить нас по адресам'
about.phones = ['+7 920 4567722', '+7 920 4567733']
about.keywords = 'Ruby, модули, подмешивание'

p about
