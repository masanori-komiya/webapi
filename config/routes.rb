Rails.application.routes.draw do
  root to: 'goods#search'
  resources :items ,only: [:index]
  post '/goods/search', to: 'goods#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
