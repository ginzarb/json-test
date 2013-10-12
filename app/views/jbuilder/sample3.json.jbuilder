json.authors do
  json.partial! 'author', author: @authors.first
end
