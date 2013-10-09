FirstRoutes::Application.routes.draw do
  resources :users do
    resources :contacts, :only => [:index, :create]
  end

  resources :contacts, :only => [:show, :update, :destroy]
  # get 'users' => 'users#index'
#   post 'users' => 'users#create'
#   get 'users/new' => 'users#new'
#   get 'users/:id/edit' => 'usere#edit'
#   get 'useres/:id' => 'useres#show'
#   put 'users/:id' => 'useres#update'
#   delete 'users/:id' => 'useres#destroy'

end
