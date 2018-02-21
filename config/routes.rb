Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to:  'posts#index'
  get       'posts'     => 'posts#index', as: 'posts'
  post      'posts'     => 'posts#create'
  get       'posts/new'   => 'posts#new', as: 'new_post'
  get       'posts/:id'   => 'posts#show', as: 'post'
  delete    'posts/:id'   => 'posts#destroy'
  patch     'posts/:id'   => 'posts#update'
  get       'posts/:id/edit' => 'posts#edit', as: 'edit_post'


  get   'users/new' => 'users#new', as: 'new_user'
  get   'users' => 'users#index', as: 'users'
  post  'users' => 'users#create'
  get   'users/:id' => 'users#show', as: 'user'


end
