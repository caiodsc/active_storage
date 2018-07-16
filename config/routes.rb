Rails.application.routes.draw do
  resources :buckets
  resources :posts
  root to: "buckets#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
