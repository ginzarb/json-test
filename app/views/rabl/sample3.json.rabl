node :authors do
  { :author => partial("rabl/author", :object => @authors.first) }
end
