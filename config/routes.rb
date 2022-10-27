Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "lists#index"
  resources :lists do
    resources :bookmarks, only: [:create, :new]
    # Inside -> You need ID
  end
  resources :bookmarks, only: :destroy
  # Outisde -> Index show edit update destroy
end


# -> edit bookmark, I might understand parent and children relation
