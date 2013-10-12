JsonTest::Application.routes.draw do
  resources :authors
  resources :publishers
  resources :books
  (1..3).each {|x| get "/jbuilder/sample#{x}", as: "jbuilder_sample#{x}" }
  (1..3).each {|x| get "/rabl/sample#{x}", as: "rabl_sample#{x}" }
  (1..3).each {|x| get "/active_model_serializers/sample#{x}", as: "serializers_sample#{x}" }
  root "index#index"
end
