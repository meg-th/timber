Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :houses do
    resources :bookings, only: [:create, :new, :destroy]
    resources :reviews, only: [:create, :new]
  end

  resources :bookings, only: [:show, :destroy]
  resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end




  #  root: home <DONE>
  #  index for account
  #  show_search_result (collection) -
  #  show_individual_treehouse (member)
  #  new_treehouse (form) + create

    # resources :houses do
  #   collection do
  #     get 'search'
  #   end
  # end
