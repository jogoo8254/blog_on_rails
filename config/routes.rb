Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "/posts" => "posts#create", as: :posts
  get "/posts/new" => "posts#new", as: :new_post
  get "/posts/:id" => "posts#show", as: :post
  get "/posts" => "posts#index"
  get "/posts/:id/edit" => "posts#edit"

end
