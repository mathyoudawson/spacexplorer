Rails.application.routes.draw do
  resources :launches
  resources :next_launch

  root 'next_launch#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
