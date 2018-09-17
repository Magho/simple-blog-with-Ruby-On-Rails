Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root for home page 
  root 'posts#index', as: 'home'

  # routes when you write /about you go to pages View about page
  get 'about' => 'pages#about', as: 'about'

  resources :posts do 
  	resources :comments
  end
  
end
