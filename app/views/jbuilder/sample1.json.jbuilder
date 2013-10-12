json.(@books) do |book|
  json.extract! book, :title, :price, :published_at, :publisher_id
  if book.title =~ /Ruby/
    json.url book_url(book)
  end
  json.authors book.authors, :id, :name
end
