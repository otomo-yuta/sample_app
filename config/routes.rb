Rails.application.routes.draw do
  # homes
  get 'top' => 'homes#top'

  # lists
  # get 'lists/new'
  # post '/lists' => 'lists#create'
  # get  '/lists' => 'lists#index'
  # get 'lists/:id' => 'lists#show', as: 'list'
  # get 'lists/:id/edit' => 'lists#edit', as: ' list'
  # patch 'lists/:id' => 'lists#update', as: 'list'
  # put 'lists/:id' => 'lists#update, as: 'list'
  # delete 'lists/:id' => 'lists#destroy', as: 'list'
  resources :lists
end
