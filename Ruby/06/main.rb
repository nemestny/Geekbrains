class Page
	attr_accessor :title, :body, :headers
  def initialize(title:, body:, headers: [])
    @title = title
    @body = body
    @headers = headers
  end
end

class News < Page
  attr_accessor :date
  def initialize(title:, body:, date:, headers: [])
    @date = date
    super(title: title, body: body, headers: headers)
  end
end

class About < Page
  attr_accessor :phones, :address
end

class PhotoCatalog < Page
  attr_accessor :photos
end

n = News.new(title: 'Новость', body: 'Содержимое новости', date: Time.now)
p n
