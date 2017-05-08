Rails.application.routes.draw do
  get '/' => 'categories#index'
  get '/categories/:category_id' => 'categories#show', as: 'category'
  get '/categories/:category_id/items/new' => 'items#new'
  get '/categories/:category_id/items/:id' => 'items#show', as: 'item'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  resources :categories do
    resources :items
  end
  resources :users
end
