Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  devise_for :users
  resources :chat_rooms, only: [:new, :create, :show, :index]
  root 'chat_rooms#index'
end
