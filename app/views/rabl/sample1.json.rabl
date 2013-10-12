collection @books
attributes :title, :price, :published_at, :publisher_id
node(:url) { |book| book_url(book)  if book.title =~ /Ruby/ }

child :authors do
  attributes :id, :name
end
