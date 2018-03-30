Rails.application.routes.draw do
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'book/new' => "book#new"
  post 'book/create' => "book#create"
  get 'book/edit' => "book#edit"
  patch 'book/update' => "book#update"
  get 'book/list' => "book#list"
  get 'book/show' => "book#show"
  get 'book/delete' => "book#delete"
  get 'book/show_subject' => "book#show_subject"

  get 'book/update' => "book#update"

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
end
