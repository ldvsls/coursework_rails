Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/" => "login#index"
  get "/home" => "home#index"

  post "/login" => "login#new"
  get "/logout" => "logout#index"

  get "/signup" => "signup#index"
  post "/signup" => "signup#new"

end
