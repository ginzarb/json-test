class ActiveModelSerializersController < ApplicationController
  def sample1
    @books = Book.all
    render json: @books, root: false
  end

  def sample2
    @books = Book.all
    render json: 'David', serializer: BookSample2Serializer, root: 'author'
  end

  def sample3
    @authors = Author.all
  end
end
