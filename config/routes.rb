Rails.application.routes.draw do

  root "users#log_in"
  resources :users, only: [:new, :create]
  resources :menu_items
  resources :parties do
    resource :order do
      post   'menu_items' => 'orders#add_menu_item',    as: :add_menu_item_to
      delete 'menu_items' => 'orders#remove_menu_item', as: :remove_menu_item_from
    end
  end

  get '/users/log_in' => "users#log_in", as: :log_in
  get '/admin' => "pages#admin", as: :admin
  get '/server' => "pages#server", as: :server

  post    '/sessions' => "sessions#create", as: :create_session
  delete  '/sessions' => "sessions#destroy", as: :destroy_session
end
