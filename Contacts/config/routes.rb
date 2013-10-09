FirstRoutes::Application.routes.draw do
  resources :users do
    resources :contacts, :only => [:index, :create] do
      resources :contact_shares, :only => [:create]
      collection do
        get 'favorites'
      end
    end
    resources :groups, :only => [:index, :create] do
      resources :contact_groups, :only => [:create]
    end
  end

  resources :contacts, :only => [:show, :update, :destroy]
  resources :groups, :only => [:show, :update, :destroy]
  resources :contact_shares, :only => [:destroy]
  resources :contact_groups, :only => [:destroy]
  # get 'users' => 'users#index'
#   post 'users' => 'users#create'
#   get 'users/new' => 'users#new'
#   get 'users/:id/edit' => 'usere#edit'
#   get 'useres/:id' => 'useres#show'
#   put 'users/:id' => 'useres#update'
#   delete 'users/:id' => 'useres#destroy'

end
