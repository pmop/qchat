Rails.application.routes.draw do
  resources :chat_room_messages
  resources :chat_rooms
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
