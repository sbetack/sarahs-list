Rails.application.routes.draw do
  get '/' => 'categories#index'
  get '/categories/:category_id' => 'categories#show', as: 'category'
  get '/categories/:category_id/items/:id' => 'items#show', as: 'item'

  resources :categories do
    resources :items
  end
end
