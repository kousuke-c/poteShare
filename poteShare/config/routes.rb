Rails.application.routes.draw do
  devise_for :users
  get '/',to:'post#index'
  get 'reserve/room'
  get 'reserve/comprete'
  get 'reserve/confirm'
  get 'post/new',to:'post#new'
  get 'post/posts'
 post 'reserve/confirm'
 post 'reserve/comprete'
 post 'reserve/back' 
  get 'reserve/reserved'
  get 'post/search_room'
  get 'search' => 'posts#search'
  get 'post/search'
  resources :reserve
  resources :post
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
