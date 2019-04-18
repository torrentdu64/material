Rails.application.routes.draw do



  mount ActionCable.server => "/cable"
  devise_for :users
  root to: 'pages#home'
   resources :products, only: [:index, :show]
   resources :chat_rooms, only: [ :show ] do
    resources :messages, only: [ :create ]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
