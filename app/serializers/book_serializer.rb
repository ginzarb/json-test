class BookSerializer < ActiveModel::Serializer
  attributes :title, :price, :published_at, :publisher_id, :url
  has_many :authors

  def url
    book_url(object)
  end

  def include_url?
    self.title =~ /Ruby/
  end
end
