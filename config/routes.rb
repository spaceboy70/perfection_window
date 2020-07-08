Rails.application.routes.draw do
  # get 'contacts/new'
  # get 'home/index'
  match ':controller(/:action(/:id))', :via => :get
  root 'home#index'

  # match '/contacts', to: 'contacts#new', via: :get
  resources 'contacts', only: [:new, :create]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
