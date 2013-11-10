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
    @book = Book.first
    render json: @book, root: false, serializer: BookExtendSerializer
  end
end
