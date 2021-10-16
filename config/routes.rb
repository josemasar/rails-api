Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :aircrafts
    end
  end

  #New route: /api/v1/aircrafts

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
