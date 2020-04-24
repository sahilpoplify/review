Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :reviews do
          resources :comments
        end

        get 'user_show' => 'reviews#user_show'
  root to: 'reviews#index'

end
