Rails.application.routes.draw do
  resources :records
  #get 'file_uploads/new'
  resources :buckets
  resources :posts
  root to: "buckets#index"
  resources :buckets do
    resources :file_uploads, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
