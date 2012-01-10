Todo::Application.routes.draw do

  resources :lists do
  	resources :tasks
  end

  root :to => 'lists#index'

end
