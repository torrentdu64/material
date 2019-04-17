Rails.application.routes.draw do



  devise_for :users
  root to: 'pages#home'
   resources :products
   resources :chat_rooms, only: :show do
     resources :messages, only: :create
   end
   resources :messages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
