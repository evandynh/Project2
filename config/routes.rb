Rails.application.routes.draw do

  root 'users#index'

  get 'categories/new' => 'categories#new', as: :new_category
  get 'categories/:id' => 'categories#show', as: :category
  get 'categories/:id/edit' => 'categories#edit', as: :edit_category
  patch 'categories/:id' => 'categories#update'
  delete 'categories/:id' => 'categories#destroy'

  get 'users/:user_id/skills/new' => 'skills#new', as: :new_skill
  get 'users/:user_id/skills/:id' => 'skills#show', as: :skill
  get 'users/:user_id/skills/:id/edit' => 'skills#edit', as: :edit_skill
  patch 'users/:user_id/skills/:id' => 'skills#update'
  delete 'users/:user_id/skills/:id' => 'skills#destroy'

  get 'users/:user_id/messages' => 'messages#index', as: :messages
  get 'users/:user_id/messages/new' => 'messages#new', as: :new_message
  get 'users/:user_id/messages/:id' => 'messages#show', as: :message
  get 'users/:user_id/messages/:id/edit' => 'messages#edit', as: :edit_message
  post 'users/:user_id/messages' => 'messages#create'
  patch 'users/:user_id/messages/:id' => 'messages#update'
  delete 'users/:user_id/messages/:id' => 'messages#destroy'


  get 'users/' => 'users#index'
  post 'users/' => 'users#create'
  get 'users/new' => 'users#new', as: :new_user
  get 'users/:id' => 'users#show', as: :user
  get 'users/:id/edit' => 'users#edit', as: :edit_user
  patch 'users/:id' => 'users#update'
  delete 'users/:id' => 'users#destroy'

  get 'login/' => 'sessions#new'
  post 'login/' => 'sessions#create'
  delete 'logout/' => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
