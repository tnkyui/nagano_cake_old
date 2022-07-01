Rails.application.routes.draw do
  
  devise_for :admin_users, path: 'admin'
  devise_for :customers

  root to: 'public/homes#top'

  namespace :admin do
    root to: 'homes#top'
    
  end


  namespace :admin do
    get 'order_details/update'
  end
  namespace :admin do
    get 'orders/show'
    get 'orders/update'
  end
  namespace :admin do
    get 'customers/index'
    get 'customers/show'
    get 'customers/edit'
    get 'customers/update'
  end
  namespace :admin do
    get 'genres/index'
    get 'genres/create'
    get 'genres/edit'
    get 'genres/update'
  end
  namespace :admin do
    get 'items/index'
    get 'items/new'
    get 'items/create'
    get 'items/show'
    get 'items/edit'
    get 'items/update'
  end

    get 'addresses/index'
    get 'addresses/edit'
    get 'addresses/create'
    get 'addresses/update'
    get 'addresses/destroy'


    get 'orders/new'
    get 'orders/confirm'
    get 'orders/complete'
    get 'orders/create'
    get 'orders/index'
    get 'orders/show'


    get 'cart_items/index'
    get 'cart_items/update'
    get 'cart_items/destroy'
    get 'cart_items/destroy_all'
    get 'cart_items/create'


    get 'customers/show'
    get 'customers/edit'
    get 'customers/update'
    get 'customers/confirm'
    get 'customers/withdraw'


    get 'items/index'
    get 'items/show'


    get 'homes/about'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
