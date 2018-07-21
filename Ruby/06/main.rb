class Page
	attr_accessor :title, :body, :headers
end

class News < Page
  attr_accessor :date
end

class About < Page
  attr_accessor :phones, :address
end

class PhotoCatalog < Page
  attr_accessor :photos
end

about = About.new

about.title = 'О нас'
about.body = 'Вы сможете обнаружить нас по адресам'
about.phones = ['+7 920 4567722', '+7 920 4567733']

p about

page = Page.new

page.title = 'Страница'
page.body = 'Тело страницы'
page.phones = ['+7 920 4567722', '+7 920 4567733']
