Rails.application.routes.draw do
  namespace :v1 do 
    resources :sessions, only: [:create, :destroy]
  end

  mount Blog::Base => '/'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
