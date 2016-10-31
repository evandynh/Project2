Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
  get 'users/' => 'users#index'
  get 'users/new' => 'users#new', as: :new_user
  post 'users/' => 'users#create'
  get 'users/:id/edit' => 'users#edit', as: :edit_user

  get 'login/' => 'sessions#new'
  post 'login/' => 'sessions#create'
  delete 'logout/' => 'sessions#destroy'
end
