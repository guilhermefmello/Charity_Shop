Rails.application.routes.draw do
  
  resources :profiles
  devise_for :users
  
  get '/cart' => 'cart#index'
  get '/cart/clear' => 'cart#clearCart'
  get '/cart/:id' => 'cart#add'

  resources :products
  
  root 'page#home'
  
  get 'page/home'

  get 'page/about'

  get 'page/contact'

  get "/Charity_Shop/app/views/products/index.html.erb", to: "products#index"

  get '/signedinuserprofile' => 'profiles#signedinuserprofile'
 
end

