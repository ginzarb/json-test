class BookSample2Serializer < ActiveModel::Serializer
  attributes :name

  def name
    @object.to_s
  end
end
