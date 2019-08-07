Rails.application.routes.draw do
  resources :restaurants do
      resources :reviews, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   # get 'restaurants/top'
    collection do
      get 'top'
    end

    # get 'restaurants/:id/chef'
    member do
      get 'chef'
    end
  end
end
