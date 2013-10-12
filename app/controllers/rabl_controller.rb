class RablController < ApplicationController
  def sample1
    @books = Book.all
  end

  def sample2
  end

  def sample3
    @authors = Author.all
  end
end
